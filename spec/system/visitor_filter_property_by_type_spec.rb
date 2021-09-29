require 'rails_helper'

describe "visitor filter proeprties by type" do
  it 'should view links on nav bar' do
    # Arrange
    PropertyType.create!(name: "Casa")    
    PropertyType.create!(name: "Apartamento")    
    PropertyType.create!(name: "Sítio")    

    # Act
    visit root_path

    # Assert
    expect(page).to have_link('Casa') 
    expect(page).to have_link('Apartamento') 
    expect(page).to have_link('Sítio') 
  end
  it 'should filter by clicking on property type' do
    property_type = PropertyType.create!(name: 'Casa')
    Property.create!({ title: 'Casa com quintal em Copacabana', 
                      description: 'Excelente casa, recém reformada com 2 vagas de garagem',
                      rooms: 3, parking_slot: true, bathrooms: 2, daily_rate: 150,
                      property_type: property_type
                    })
    property_type2 = PropertyType.create!(name: 'Apartamento')
    Property.create!({ title: 'Cobertura em Manaus', 
                      description: 'Cobertura de 300m2, churrasqueira e sauna privativa',
                      rooms: 5, parking_slot: false, bathrooms: 2, daily_rate: 150,
                      property_type: property_type2
                    })

    visit root_path
    click_on 'Casa'

    expect(page).to have_link("Casa com quintal em Copacabana")
    expect(page).to not_to_have_content("Cobertura em Manaus")
  end

it 'sucessfuly' do

 end
end
