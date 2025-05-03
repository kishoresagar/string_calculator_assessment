require 'pry'

class Calculator
	def add(input)
		numbers = input.scan(/\d+/).map{|num| num.to_i }   #scan finds digits in the string
		numbers.inject(0) {|sum, number| sum + number}
	end
end