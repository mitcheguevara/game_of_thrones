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
 lannister = House.create({
   name: 'House Baratheon',
   sigil: 'A crowned black stag rampant on a gold field',
   motto: 'Ours is the Fury',
   location: 'Storms End',
   banner_img: 'http://orig01.deviantart.net/ca34/f/2012/301/4/6/house_baratheon_banner_by_grimklok-d5j8r6f.png'
 })

 stark = House.create({
   name: 'House Targarian',
   sigil: 'A red three-headed dragon,on a black field',
   motto: "Fire and Blood",
   location: 'Dragonstone',
   banner_img: 'http://orig06.deviantart.net/6782/f/2012/301/7/4/house_targeryan_banner_by_grimklok-d5j8yar.png'
 })

 stark = House.create({
   name: 'House Greyjoy',
   sigil: 'A golden kraken on a black field',
   motto: "What Is Dead May Never Die",
   location: 'Pyke',
   banner_img: 'http://orig03.deviantart.net/52b9/f/2012/301/4/8/house_greyjoy_banner_by_grimklok-d5j8upo.png'
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
