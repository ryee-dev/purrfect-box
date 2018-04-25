class Review < ActiveRecord::Base
  belongs_to :box

  validates :box_id, :presence => true
  validates :name, :presence => true
  validates :review, :presence => true
  validates :review, length: { minimum: 50, maximum: 250 }, allow_blank: false
  validates :rating, :presence => true
  validates :rating, :inclusion => 1..5
end