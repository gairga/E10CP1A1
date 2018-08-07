class MiClase
 	attr_accessor :name
 	#attr_reader :name
  	#attr_writer :name
	def initialize(name)
		@name = name
	end
	
	def self.saludar
		puts "Hola! Soy la clase #{self.name}"
	end
end

c = MiClase.new('Clase Uno')
puts c.name
c.name = 'MiClase'
puts MiClase.saludar

#"Hola! Soy la clase MiClase"