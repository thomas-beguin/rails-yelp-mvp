puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

10.times do
  restaurant = Restaurant.create!({ name: Faker::Restaurant.name, address: Faker::Address.full_address,
                                    category: Restaurant::CATEGORY[rand(0...Restaurant::CATEGORY.length)],
                                    phone_number: Faker::PhoneNumber.phone_number })
  puts "Created #{restaurant.name}"
end

puts "Finished!"
