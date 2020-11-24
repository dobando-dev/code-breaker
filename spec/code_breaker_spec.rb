require './lib/code_breaker'

describe CodeBreaker do
    it "iniciar con el secreto 5" do
        code_breaker = CodeBreaker.new("5")
        expect(code_breaker.secreto).to eq "5"
    end

    it "Arriesgo con 5 y gano" do
        code_breaker = CodeBreaker.new("5")
        resultado = code_breaker.arriesgar("5")
        expect(resultado).to eq true
    end

    it "Arriesgo con 8 y pierdo" do
        code_breaker = CodeBreaker.new("5")
        resultado = code_breaker.arriesgar("8")
        expect(resultado).to eq false
    end

    it "Arriesgo con letras y recibo un error" do
        code_breaker = CodeBreaker.new("5")
        resultado = code_breaker.arriesgar("a")
        expect(resultado).to eq "Ingrese un numero"
    end
end