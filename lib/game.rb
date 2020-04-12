class Game
    attr_accessor :state
    @@count = 0 # @@ before a variable tells us we are working with a class variable.

    def initialize(state=:initial, count=1)
        @state = state
        @@count += count
    end

    def start
        @state = :started
    end

    def Game.mostrar_quantidade_instancias
        @@count
    end

end

