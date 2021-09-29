# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
property_type = PropertyType.create!(name: 'Casa')
property_location = PropertyLocation.create!(name: 'Rio de janeiro')
    Property.create!({ title: 'Casa com quintal em Copacabana', 
                      description: 'Excelente casa, recém reformada com 2 vagas de garagem',
                      rooms: 3, parking_slot: true, bathrooms: 2, daily_rate: 150,
                      property_type: property_type, property_location: property_location
                    })
property_type2 = PropertyType.create!(name: 'Apartamento')
property_location2 = PropertyLocation.create!(name: 'Manaus')
    Property.create!({ title: 'Cobertura em Manaus', 
                      description: 'Cobertura de 300m2, churrasqueira e sauna privativa',
                      rooms: 5, parking_slot: false, bathrooms: 2, daily_rate: 150,
                      property_type: property_type2, property_location: property_location2
                    })


