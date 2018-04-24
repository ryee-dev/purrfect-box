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

  def self.most_reviewed
    boxes = self.all
    @box = boxes.last
    boxes.each do |box|
      if box.reviews.length > @box.reviews.length
        @box = box
      end
    end
    @box
  end
end