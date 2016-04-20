# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times.each do |x| 
  Movie.create(:name => Faker::Name.name ,:video => "https://www.youtube.com/embed/FRW3K0LlsD0",:year => Faker::Date.between(2.days.ago, Date.today), :director => Faker::Name.name, :duration => Faker::Commerce.price, :country => Faker::Address.country, :actors => Faker::Name.name , :link => Faker::Bitcoin.address, :tag => Faker::Book.genre, :description => Faker::Hipster.paragraph, :avatar =>Faker::Avatar.image #=> "https://robohash.org/sitsequiquia.png?size=300x300"
 )
end

20.times.each do |x| 
 Category.create(:name => Faker::Book.genre)
end


