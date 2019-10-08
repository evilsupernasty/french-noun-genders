# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "json"

Noun.delete_all

file = File.open File.join(File.dirname(__FILE__), "./nouns.json")
nouns = JSON.load file
file.close

nouns.each do |noun|
  Noun.create(name: noun["name"], gender: noun["gender"], translation: noun["translation"])
end
