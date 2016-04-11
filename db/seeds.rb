# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
   	parking_t = ParkingType.create([ 	{ description: 'Jardin', active: true }, 
   										{ description: 'Sotano', active: true },
   										{ description: 'Azotea', active: true }, ])

   	region_t = Region.create([ 	{ description: 'Lima', active: true }, 
								{ description: 'Ica', active: true },
								{ description: 'Loreto', active: true }, ])

	state_t = State.create([ 	{ description: 'San Isidro', active: true, region_id: 1 }, 
								{ description: 'Miraflores', active: true, region_id: 1 },
								{ description: 'Pueblo Libre', active: true, region_id: 1 },
								{ description: 'San Miguel', active: true, region_id: 1 },
								{ description: 'Surco', active: true, region_id: 1 },
								{ description: 'San Luis', active: true, region_id: 1 },
								{ description: 'San Borja', active: true, region_id: 1 }, ])
   

#   Mayor.create(name: 'Emanuel', city: cities.first)
