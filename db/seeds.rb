# box_list = [
#     ["Cool Cat Box", "Medium", "Red", 2.99],
#     ["Cat Loaf Box", "Large", "Beige", 3.99],
#     ["Regular Cardboard Box", "Medium", "Brown", 0.99]
# ]
#
# review_list = [
#     [1, "Pawstin Meowers", "Groovy baby~", 5],
#     [2, "Meower Never", "My new favorite box!", 5],
#     [3, "Mr. Whiskers", "You gotta be KITTEN me!", 3]
# ]
#
# box_list.each do |name, size, color, price|
#   Box.create( name: name, size: size, color: color, price: price )
# end
#
# review_list.each do |box_id, name, review, rating|
#   Review.create( box_id: box_id, name: name, review: review, rating: rating )
# end
#
#

Box.destroy_all
Review.destroy_all

15.times do |index|
  Box.create!(name: Faker::Commerce.material,
              description: Faker::FamilyGuy.quote,
              size: Faker::Dog.size,
              color: Faker::Color.color_name.titleize,
              price: Faker::Commerce.price)

  @box_id = Box.last.id

  (Random.rand(15)).times do |r|
    Review.create!(box_id: @box_id,
                   name: Faker::Cat.name,
                   review: Faker::FamilyGuy.quote,
                   rating: Faker::Number.between(1, 5))
  end
end

p "Created #{Box.count} boxes"
p "Created #{Review.count} reviews"