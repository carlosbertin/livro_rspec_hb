require 'spec_helper'
require 'carrinho_compras'

describe 'Carrinho de Compras' do
    carrinho = CarrinhoCompras.new
    carrinho.adicionar_item("Celular", "Notebook", "Caixa Bluetoth", "Teclado")

    it '#mostrar_itens' do
        # puts carrinho.mostrar_itens
        expect(carrinho.itens_compras.size).to eq(4)
    end

    it 'verifica se está vazio' do
        expect(carrinho.itens_compras.empty?).to be_falsey
    end

    it 'verificar se o objeto é da classe Carrinho Compras' do
        expect(carrinho).to be_an_instance_of(CarrinhoCompras)
    end

end