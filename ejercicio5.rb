module Herviboro
	@@definir = 'Sólo me alimento de vegetales!'
	
	def self.definir
		@@definir
 	end
 
 	def dieta
 		"Soy un Herviboro!"
 	end
end

class Animal < Herviboro
	def saludar
 		"Soy un animal!"
 	end
end

class Conejo < Animal 
	def initialize(name)
 		@name = name
 	end
end
conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
Herviboro.definir