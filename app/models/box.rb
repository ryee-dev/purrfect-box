class Box < ActiveRecord::Base
  # relationships
  has_many :reviews

  # validations
  validates :name, :presence => true
  validates :size, :presence => true
  validates :color, :presence => true
  validates :price, :presence => true

  # scopes
  scope :three_most_recent, -> {
    order(created_on: :desc).limit(3)
  }

  scope :most_reviews, -> {(
    select("box.id, box.name, box.size, box.color, box.price, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(10)
  )}
end