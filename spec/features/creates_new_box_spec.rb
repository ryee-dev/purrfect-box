# require 'rails_helper'
#
# describe "add new box" do
#   it "adds a new box to the boxes database" do
#     @box = Box.create!(name: "test", size: "small", color: "black", price: 9.99)
#     visit boxes_path
#     click_on 'Add New Box'
#     fill_in 'Name', :with => 'test'
#     fill_in 'price', :with => 9.99
#     click_on 'Create Box'
#     expect(page).to have_content
#   end
# end