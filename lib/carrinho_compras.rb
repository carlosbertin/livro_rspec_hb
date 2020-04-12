class CarrinhoCompras
    attr_reader :itens_compras

    def initialize
        @itens_compras = []
    end

    def adicionar_item(*itens)
        @itens_compras += itens
    end

    def mostrar_itens
        @itens_compras
    end
end