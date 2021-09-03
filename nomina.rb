class Docente
    attr_accessor :name, :lastname, :rut, :grado, :retraso, :antiguedad, :horas
    def initialize(name, lastname, rut, grado, retraso, antiguedad, horas)
        @name = name
        @lastname = lastname
        @rut = rut
        @grado = grado
        @antiguedad = antiguedad
        @retraso = retraso
        @horas= horas
    end 

    def grade_status
        if @grado == "Bachiller"
            status == 40
        elsif @grado == "Titulado"
           status == 80
        elsif @grado == "Maestria"
            status == 100 
        else
            status == 180
        end
    end

    def antiguedad_status
        if @antiguedad > 15 
            status == 1.1
        elsif @antiguedad >= 11 or @antiguedad <= 15
           status == 1.07
        elsif @antiguedad >= 7 or @antiguedad < 11
            status == 1.05
        elsif @antiguedad >= 4 or @antiguedad < 7
            status == 1.04
        else
            status == 1.03
        end
    end

    def retraso_status
        if @retraso == 0 
            status = 120
        elsif @retraso >= 1 or @retraso <= 5
           status = 80
        elsif @retraso >= 6 or @retraso <= 10
            status = 40
        elsif @retraso >= 11 or @retraso <= 15
            status = 0
        else
            status = -40
        end
    end
     
    def mensual (total)
        total = ((@grado * @horas) * @antiguedad) + @retraso
     end
end

profe1=Docente.new("Enrique", "Melgarejo", "25654787", "Bachiller", 11, 0, 72)
#profe2=Docente.new("Richar", "Lujano", "2555555", "Titulado", 11, 15, 78)

puts "#{@name} "


