require 'calculator'

RSpec.describe Calculator do
	it "given an empty string returns 0" do
		expect(Calculator.new.add("")).to eq(0)
	end

	it "given a single value returns a number" do
		expect(Calculator.new.add("1")).to eq(1)
	end

	it "given a two value returns sum of two number" do
		expect(Calculator.new.add("1,5")).to eq(6)
	end

	it "handle any amount of numbers" do
		expect(Calculator.new.add("1,5,10,15")).to eq(31)
	end

	it "handle new lines between numbers (instead of commas)" do
		expect(Calculator.new.add("1\n2,3")).to eq(6)
	end
end