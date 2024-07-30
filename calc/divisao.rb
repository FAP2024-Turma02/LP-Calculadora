class Dividir

    def initialize (a, b)
        @a = a
        @b = b
    end
    
    def dividir
        raise ZeroDivisionError, "Não é possível dividir por zero." if @b.zero?
        @a / @b
    end
    
    end