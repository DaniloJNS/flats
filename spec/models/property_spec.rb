require 'rails_helper'

describe Property do

  context 'validations' do

    context 'present' do
      let(:property) { subject }

      it 'title must be present' do
        property.valid?
        expect(property.errors.full_messages_for(:title)).to include('Título não pode ficar em branco') 
      end

      it 'description must be present' do
        property.valid?
        expect(property.errors.full_messages_for(:description)).to include('Descrição não pode ficar em branco') 
      end

      it 'rooms must be present' do
        property.valid?
        expect(property.errors.full_messages_for(:rooms)).to include('Quartos não pode ficar em branco') 
      end

      it 'bathrooms must be present' do
        property.valid?
        expect(property.errors.full_messages_for(:bathrooms)).to include('Banheiros não pode ficar em branco') 
      end

      it 'daily_rate must be present' do
        property.valid?
        expect(property.errors.full_messages_for(:daily_rate)).to include('Diária não pode ficar em branco') 
      end
    end

    context 'must be greater than 0' do
      let(:property) { subject }

      it 'rooms must be greater than 0' do
        property.rooms = -1
        property.valid?
        expect(property.errors.full_messages_for(:rooms)).to include("Quartos deve ser maior que 0") 
      end

      it 'bathrooms must be greater than 0' do
        property.bathrooms = -1
        property.valid?
        expect(property.errors.full_messages_for(:bathrooms)).to include("Banheiros deve ser maior que 0") 
      end

      it 'daily_rate must be greater than 0' do
        property.daily_rate = -1
        property.valid?
        expect(property.errors.full_messages_for(:daily_rate)).to include("Diária deve ser maior que 0") 
      end

      context 'must be integer' do
        let(:property) { subject }

        it 'rooms must be integer' do
          property.rooms = 1.2
          property.valid?
          expect(property.errors.full_messages_for(:rooms)).to include("Quartos não é um número inteiro") 
        end

        it 'bathrooms must be integer' do
          property.bathrooms = 1.2
          property.valid?
          expect(property.errors.full_messages_for(:bathrooms)).to include("Banheiros não é um número inteiro") 
        end

      end

    end

  end

end
