class PacotePalavra
    attr_reader :palavras #atributo que serve de "porta" para acessar esta classe.

    def initialize
        @palavras = []
    end

    def adicionar_palavras(*palavras)
        @palavras += palavras
    end


end