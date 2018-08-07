module Test
	def result
		average = (score1 + score2) / 2.0
		puts average > 4 ? "Aprobado #{average}" : "Reprobado #{average}" 
	end
end

module Attendance
	def student_quantity
		puts "Estudiantes creados: #{quantity}"
	end
end

class Student
	include Test
	extend Attendance

	attr_reader :score1, :score2
	@@quantity = 0

	def initialize(name, score1= 4, score2 = 4)
		@name = name
		@score1 = score1
		@score2 = score2
		@@quantity += 1
	end

	def self.quantity
		@@quantity
	end
end
student = []
student = [['Gaby',6,2],['Alejandra',4,5],['Guillermo',1,3],['Andres',3,3]]
student.each { |s| Student.new(*s).result}
Student.student_quantity