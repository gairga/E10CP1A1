class Vehicle
	def initialize(model, year)
		@model = model
		@year = year
		@start = false
	end
	
	def engine_start
		@start = true
	end
end

# 1. Crear una clase Car que herede de Vehicle
class Car < Vehicle
	@@instancias_car = 0
	# 2. El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un
	#contador de instancias de Car. 
	def initialize()
		@@instancias_car +=1		
	end

	# 3. Crear un método de clase en Car que devuelva la cantidad de instancias.
	def self.get_number_of_instances
		@@instancias_car
	end
	
	# 4. El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
	def engine_start
		puts "El motor se ha encendido!'"
	end 
	
end

# 5. Instanciar 10 Cars
10.times do |i|
	Car.new
end

# 6. Consultar la cantidad de instancias generadas de Car mediante el método de clase
#creado.
puts Car.get_number_of_instances


puts Car.new.engine_start