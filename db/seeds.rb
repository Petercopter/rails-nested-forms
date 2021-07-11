# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

occupation_names = ['Actor', 'Barista', 'Model']

users = [
  { name: 'Derek Zoolander', occupation_names: ['Model'] },
  { name: 'Fabio', occupation_names: ['Actor', 'Model'] },
  { name: 'Hansel', occupation_names: ['Model'] },
  { name: 'Jeff', occupation_names: ['Barista', 'Model'] },
  { name: 'Tyson Beckford', occupation_names: ['Actor', 'Model'] }
]

occupation_names.each { |name| Occupation.create(name: name) }

users.each do |user|
  u = User.new(name: user[:name])

  user[:occupation_names].each do |name|
    u.occupations << Occupation.find_by(name: name)
  end

  u.save
end
