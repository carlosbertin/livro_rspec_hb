require 'spec_helper'
require 'game'

describe Game do
    describe '#start' do
        before do
            @game = Game.new
        end
        it 'muda o estado do jogo de :initial para :started' do
            expect{
                @game.start
            }.to change { @game.state }.from(:initial).to(:started)
        end 
        
        it 'créditos inseridos no jogo' do
            # puts "pega o valor do atributo state: #{@game.instance_variable_get("@state")}"
            expect { Game.new }.to change { Game.mostrar_quantidade_instancias }.by(1)
        end
    end
end