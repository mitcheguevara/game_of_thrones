# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
 Character.destroy_all

 lannister = House.create({
   name: 'House Lannister',
   sigil: 'Lion',
   motto: 'Hear Me Roar',
   location: 'Casterly Rock',
   banner_img: 'http://orig12.deviantart.net/0cfc/f/2012/301/5/3/house_lannister_banner_by_grimklok-d5j8saf.png'
 })

 stark = House.create({
   name: 'House Stark',
   sigil: 'Direwolf',
   motto: 'Winter Is Coming',
   location: 'Winterfell',
   banner_img: 'http://orig06.deviantart.net/85ed/f/2012/301/5/f/house_stark_banner_by_grimklok-d5j8rz9.png'
 })

 snow = stark.characters.create({
   name: 'Robb Stark',
   title: 'The Young Wolf',
   quote: 'The king in the north'
 })

 tyrion = lannister.characters.create({
   name: 'Tyrion',
   title: 'The Imp',
   quote: 'Loving sister, schemes and plots are the same thing'
 })

 arya = stark.characters.create({
   name: 'Arya',
   title: 'Lady of nothing ',
   quote: 'Thats not me'
 })
