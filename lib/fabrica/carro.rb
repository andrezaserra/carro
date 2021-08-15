module Fabrica
    class Carro

        attr_accessor :marca, :modelo, :dono

        def initialize(marca, modelo, dono)
            @marca = marca
            @modelo = modelo
            @dono = dono
        end

        def acelera
            puts "VRUM VRUMM..."
        end
    end
end
