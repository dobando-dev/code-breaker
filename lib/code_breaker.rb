class CodeBreaker

    attr_reader :secreto

    def initialize secreto
        @secreto = secreto
    end

    def arriesgar numero
        if(numero.to_i.to_s==numero)
            return numero == secreto
        else
            "Ingrese un numero"
        end
    end
    
end