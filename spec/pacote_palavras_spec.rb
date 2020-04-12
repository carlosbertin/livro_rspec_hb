require 'spec_helper'
require 'pacote_palavra'

describe PacotePalavra do
    describe "#adicionar_palavras" do
        it "adicionando palavras no pacote" do
            pacote_palavra = PacotePalavra.new
            pacote_palavra.adicionar_palavras("amor", "carinho", "paixão")

            expect(pacote_palavra.palavras.size).to be(3)
        end 
    end
end