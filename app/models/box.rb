class Box < ActiveRecord::Base
  has_many :tasks

  validates :name, :presence => true
  validates :size, :presence => true
  validates :color, :presence => true
  validates :price, :presence => true
end