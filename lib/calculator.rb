require 'pry'

class Calculator
	def add(input)
		numbers = input.split(',').map{|num| num.to_i }
		numbers.inject(0) {|sum, number| sum + number}
	end
end