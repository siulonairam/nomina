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
            status = 40
        elsif @grado == "Titulado"
           status = 80
        elsif @grado == "Maestria"
            status = 100 
        else
            status = 180
        end
    end

    def antiguedad_status
        if @antiguedad > 15 
            status = 1.1
        elsif @antiguedad >= 11 and @antiguedad <= 15
           status = 1.07
        elsif @antiguedad >= 7 and @antiguedad < 11
            status = 1.05
        elsif @antiguedad >= 4 and @antiguedad < 7
            status = 1.04
        else
            status = 1.03
        end
    end

    def retraso_status
        if @retraso == 0 
            status = 120
        elsif @retraso >= 1 and @retraso <= 5
           status = 80
        elsif @retraso >= 6 and @retraso <= 10
            status = 40
        elsif @retraso >= 11 and @retraso <= 15
            status = 0
        else
            status = -40
        end
    end

    def mensual
        total = (((grade_status * @horas) * antiguedad_status) + retraso_status).round
    end


    def listgral  
          
        puts "Profesor #{@name} #{@lastname},RUT: #{@rut}, tiene grado #{@grado}, Antiguedad #{@antiguedad} y un sueldo de #{profe1.mensual}"
        #puts "Profesor #{profe2.name} #{profe1.lastname},RUT: #{profe1.rut}, tiene grado #{profe1.grado}, Antiguedad #{profe1.antiguedad} y un sueldo de #{profe1.mensual}"
        #puts "Profesor #{profe3.name} #{profe1.lastname},RUT: #{profe1.rut}, tiene grado #{profe1.grado}, Antiguedad #{profe1.antiguedad} y un sueldo de #{profe1.mensual}"
        #puts "Profesor #{profe1.name} #{profe1.lastname},RUT: #{profe1.rut}, tiene grado #{profe1.grado}, Antiguedad #{profe1.antiguedad} y un sueldo de #{profe1.mensual}"
        #puts "Profesor #{profe1.name} #{profe1.lastname},RUT: #{profe1.rut}, tiene grado #{profe1.grado}, Antiguedad #{profe1.antiguedad} y un sueldo de #{profe1.mensual}"
        #puts "Profesor #{profe1.name} #{profe1.lastname},RUT: #{profe1.rut}, tiene grado #{profe1.grado}, Antiguedad #{profe1.antiguedad} y un sueldo de #{profe1.mensual}"
        #puts "Profesor #{profe1.name} #{profe1.lastname},RUT: #{profe1.rut}, tiene grado #{profe1.grado}, Antiguedad #{profe1.antiguedad} y un sueldo de #{profe1.mensual}"
        #puts "Profesor #{profe1.name} #{profe1.lastname},RUT: #{profe1.rut}, tiene grado #{profe1.grado}, Antiguedad #{profe1.antiguedad} y un sueldo de #{profe1.mensual}"
    end
 end

# ingresar nombre, apellido, rut, grado, retraso, antiguedad y horas
profe1=Docente.new("Enrique", "Melgarejo", "25654787", "Bachiller", 11, 0, 72)  
profe2=Docente.new("Richar", "Lujano", "2555555", "Titulado", 15, 15, 78)
profe3=Docente.new("Matias", "Toro", "245555555", "Maestria", 5, 0, 50)
profe4=Docente.new("Luis", "Rivero", "29999955", "Doctorado", 4, 10, 25)
profe5=Docente.new("Pedro", "Melgarejo", "25654787", "Bachiller", 11, 0, 72)  
profe6=Docente.new("Ernesto", "Lujano", "2555555", "Titulado", 15, 15, 78)
profe7=Docente.new("Mati", "Toro", "245555555", "Maestria", 5, 0, 50)
profe8=Docente.new("Mariano", "Rivero", "29999955", "Doctorado", 4, 10, 25)

# puts remuneracion = [ ]
# puts remuneracion.push profe1.mensual
# puts remuneracion.push profe2.mensual
# puts remuneracion.class




# puts profe1.antiguedad
# puts profe1.horas
puts profe2.mensual
puts profe1.mensual



profe8.listgral


