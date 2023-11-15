# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

rest_name_array = ['la goulue', "l'esplanade", 'chez francis', 'restaurante botin', 'dal bolognese',
                          'bardo st. james', 'tausend', "l'aperousse"]
rest_addres_array = %w[paris rome milan london madrid berlin geneva brussels amsterdam bordeaux barcelona]
rest_categ_array = %w[chinese japanese italian french belgian]

reviews_content_array = ['not bad', 'bad', 'terrible', 'good', 'tasty', 'nice staff', 'fine', 'delicious']
reviews_rating_array = [0..5]
restaurant_id_array = [1..60]

15.times do
  Restaurant.create(name: rest_name_array.sample, address: rest_addres_array.sample, category: rest_categ_array.sample)
end

150.times do
  review = Review.new(content: reviews_content_array.sample, rating: reviews_rating_array.sample)
  review.restaurant_id = restaurant_id_array.sample
  review.save
end
