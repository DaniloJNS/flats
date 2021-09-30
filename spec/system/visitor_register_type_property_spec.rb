require "rails_helper"

describe "Visitor register type_register" do
  it 'successfully' do

    visit root_path
    click_on "Cadastrar Tipo de Imóvel"
    
    fill_in "Nome", with: "Apartamento"
    click_on "Enviar"

    expect(page).to have_content("Apartamento") 

  end
  
  it 'with name empty' do
     visit root_path
    click_on "Cadastrar Tipo de Imóvel"
    
    click_on "Enviar"

    expect(page).to have_text("Cadastro ínvalido")
  end

  it 'with duplicate name' do
    PropertyType.create(name:"Casa")
    
    visit root_path
    click_on "Cadastrar Tipo de Imóvel"
    
    fill_in "Nome", with: "Casa"
    click_on "Enviar"

    expect(page).to have_text("Casa está cadastrado")
  end
end
