class CodeBreaker

    attr_reader :secreto

    def initialize secreto
        @secreto = secreto
    end

    def arriesgar numero
        return numero == secreto
    end
    
end