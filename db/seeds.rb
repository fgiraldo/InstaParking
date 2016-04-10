# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
   parking_t = ParkingType.create([ { description: 'Jardin', active: true }, 
   									{ description: 'Sotano', active: true },
   									{ description: 'Azotea', active: true }, ])

   parking_t = Region.create([ 	{ description: 'Lima', active: true }, 
								{ description: 'Ica', active: true },
								{ description: 'Loreto', active: true }, ])

#   Mayor.create(name: 'Emanuel', city: cities.first)
