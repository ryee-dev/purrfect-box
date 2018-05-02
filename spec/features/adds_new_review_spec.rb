require 'rails_helper'

describe "add new review to box" do
  it "adds a new review to the reviews database" do

    box = Box.create!(name: "test2", size: "small", color: "pink", price: 19.99)
    visit boxes_path
    click_on 'Add New Box'
    fill_in 'Name', :with => 'test2'
    fill_in 'Price', :with => 19.99
    click_button 'Create Box'

    visit box_path(box)
    click_on 'Add Review'
    fill_in 'Name', :with => 'bob'
    fill_in 'Review', :with => 'good'
    fill_in 'Rating', :with => 3
    click_on 'Create Review'

    expect(page).to have_content 'bob'
  end
end