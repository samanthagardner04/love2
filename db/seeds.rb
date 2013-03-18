# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



1.times do
  u=User.new
  u.name="Johnny Test"
  u.email="Email@test.com"
  u.password="Password"
  u.password_confirmation="Password"
  u.save
end


3.times do
  c=Category.new
  c.name="Pillows"
  c.description="Category Description"
  c.save
end

4.times do
  i = Item.new
  i.price = rand(1..300)
  i.user = User.first
  i.story = "Random Story"
  i.description="Description Description"
  i.name= "Sample Item Name"
  i.category= Category.first
  i.save
end

puts "seeds file finished"
