require 'rails_helper'

describe "visitor filter propreties by type" do
  it 'using links on home page' do
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
  it 'sucessfully' do

    apartamento = PropertyType.create!(name: 'Apartamento')
    casa = PropertyType.create!(name: 'Casa')
    Property.create!({ title: 'Casa com quintal em Copacabana', 
                      description: 'Excelente casa, recém reformada com 2 vagas de garagem',
                      rooms: 3, parking_slot: true, bathrooms: 2, daily_rate: 150,
                      property_type: property_type
                    })
    Property.create!({ title: 'Cobertura em Manaus', 
                      description: 'Cobertura de 300m2, churrasqueira e sauna privativa',
                      rooms: 5, parking_slot: false, bathrooms: 2, daily_rate: 150,
                      property_type: property_type2
                    })

    visit root_path
    click_on 'Casa'

    expect(page).to have_css('h1', text: 'Imóveis do tipo Casa')
    expect(page).to have_content('Casa com quintal em Copacabana')
    expect(page).not_to have_content('Cobertura em Manaus')
  end

end
