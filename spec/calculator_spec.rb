require 'calculator'

RSpec.describe Calculator do
	it "given an empty string returns 0" do
		expect(Calculator.new.add("")).to eq(0)
	end
end