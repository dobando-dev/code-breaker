class CodeBreaker

    attr_reader :secreto
    attr_accessor :chances

    def initialize secreto
        @secreto = secreto
        @chances = 3
    end

    def arriesgar numero
        @chances -=1
        if(numero.to_i.to_s==numero)
            return numero.to_i == secreto.to_i
        else
            "Ingrese un numero"
        end
    end
    
end