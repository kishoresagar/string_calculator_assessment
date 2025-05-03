require 'pry'

class Calculator
	def add(input)
		numbers = input.scan(/-?\d+/).map{|num| num.to_i }   #scan finds digits in the string
		check_for_negatives(numbers)
		numbers.inject(0) {|sum, number| sum + number}
	end
end

def check_for_negatives(numbers)
	get_negative_values = numbers.select(&:negative?)
	raise ArgumentError, "Negative numbers not allowed: #{get_negative_values.join(',')}" if get_negative_values.any?
end