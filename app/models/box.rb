class Box < ActiveRecord::Base
  validates :name, :presence => true
  validates :size, :presence => true
  validates :color, :presence => true
  validates :price, :presence => true
end