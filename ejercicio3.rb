class Vehicle
	def initialize(model, year)
		@model = model
		@year = year
		@start = false
	end
	
	def engine_start
		@start = true
		puts "El auto #{@model} del año #{@year} se ha encendido!'"
	end
end

# 1. Crear una clase Car que herede de Vehicle
class Car < Vehicle
	@@instancias_car = 0
	# 2. El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un
	#contador de instancias de Car. 
	def initialize(model, year)
		super
		@@instancias_car +=1		
	end

	# 3. Crear un método de clase en Car que devuelva la cantidad de instancias.
	def self.get_number_of_instances
		@@instancias_car
	end

end

# 5. Instanciar 10 Cars
10.times do |i|
	Car.new('Yaris',2018)
end

# 6. Consultar la cantidad de instancias generadas de Car mediante el método de clase
#creado.
puts Car.get_number_of_instances


puts Car.new('Yaris',2018).engine_start