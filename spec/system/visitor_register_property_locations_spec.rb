require "rails_helper"

describe "Visitor register property_location" do
  it 'successfully' do

    visit root_path
    click_on "Cadastrar Nova Localização"
    
    fill_in "Nome", with: "Aracaju"
    click_on "Enviar"

    expect(page).to have_content("Aracaju") 

  end
  
  it 'with name empty' do
     visit root_path
    click_on "Cadastrar Nova Localização"
    
    fill_in "Nome", with: ""
    click_on "Enviar"

    expect(page).to have_text("Cadastro ínvalido")
  end

  it 'with duplicate name' do
    PropertyType.create(name:"Aracaju")
    
    visit root_path
    click_on "Cadastrar Nova Localização"
    
    fill_in "Nome", with: "Aracaju"
    click_on "Enviar"

    expect(page).to have_text("Aracaju está em uso")
  end
end
