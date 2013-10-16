# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Rainbow.create(name: 'RGB', description: 'Beautiful like starshine!', pretty: true)
Rainbow.create(name: 'CMYK', description: 'Not as pretty as RGB...', pretty: false)
Rainbow.create(name: 'Gray', description: 'Not actually a rainbow.', pretty: false)
Rainbow.create(name: 'Nyan', description: 'NANANANANANAN!', pretty: true)
Rainbow.create(name: 'Skittles', description: 'Taste it!', pretty: true)
