class Review < ActiveRecord::Base
  belongs_to :box

  validates :box_id, presence => true
  validates :name, presence => true
  validates :review, presence => true
  validates :rating, presence => true
end