require 'calculator'

RSpec.describe Calculator do
	it "given an empty string returns 0" do
		expect(Calculator.new.add("")).to eq(0)
	end

	it "given a single value returns a number" do
		expect(Calculator.new.add("1")).to eq(1)
	end
end