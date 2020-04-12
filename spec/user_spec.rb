require 'spec_helper'

RSpec.describe User, type: :model do
    describe 'insere usuário' do

        usuario = User.new(nome: 'Maria', data_nascimento: '01/01/1988')

        it 'válido' do
            expect(usuario.save).to eq(usuario.persisted?)
        end        
        
        it 'inválido' do
            usuario.nome = nil
            expect(usuario.save).not_to eq(usuario.persisted?)
        end

        # Utilizando shoulda-matchers 
        # describe 'validations' do
        #     it { is_expected_to validate_presence_of(:nome) }
        # end
        
        # describe '#email' do
        #     it { is_expected_to_not allow_value("blah").for(:email) }
        #     it { is_expected_to allow_value("a@b.com").for(:email) }
        # end
        
        # describe '#age' do
        #     it { is_expected_to validate_inclusion_of(:age).in_range(1..100) }
        # end
    end
end