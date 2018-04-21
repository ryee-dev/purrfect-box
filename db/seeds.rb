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

15.times do |index|
  Box.create!(name: Faker::Commerce.material,
              size: Faker::Dog.size,
              color: Faker::Color.color_name,
              price: Faker::Commerce.price)
end

p "Created #{Box.count} boxes"
