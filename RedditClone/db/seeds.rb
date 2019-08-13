# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

  User.destroy_all

  u1 = User.create!(username: 'supdood', password: '123456')

  Sub.destroy_all
    
  sub1 = Sub.create!(title: 'peanuts', description: 'yummy', user_id: u1.id)
  sub2 = Sub.create!(title: 'almonds', description: 'less yummy', user_id: u1.id)

end
