require "spec_helper"
require "pilha"

describe Pilha do
    
    pilha = Pilha.new
    pilha.colocar_numeros(1,2,3,4)
    
    it 'mostra último número da pilha' do
        expect(pilha.topo).to eq(4)
    end

    it 'mostra tamanho da pilha' do
        expect(pilha.pilha_de_numeros.size).to eq(4)
    end

    it 'identifica 2º elemento' do
        segundo_elemento = pilha.pilha_de_numeros[1]
        expect(segundo_elemento > 1).to be_truthy
    end

end