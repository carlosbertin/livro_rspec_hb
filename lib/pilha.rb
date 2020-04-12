class Pilha
    attr_reader :pilha_de_numeros

    def initialize
        @pilha_de_numeros = []
    end

    def colocar_numeros(*numeros)
        @pilha_de_numeros += numeros
    end

    def topo
        @pilha_de_numeros.last
    end
end