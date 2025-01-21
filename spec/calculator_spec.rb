# spec/string_calculator_spec.rb
require_relative '../lib/calculator'
require 'rspec'

RSpec.describe Calculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(Calculator.add("")).to eq(0)
    end
    it 'returns the number for a single number' do
      expect(Calculator.add("1")).to eq(1)
    end
    it 'returns the sum for two numbers' do
      expect(Calculator.add("1,5")).to eq(6)
    end
    it 'returns the sum for any amount of numbers' do
      expect(Calculator.add("1,2,3,4")).to eq(10)
    end
    it 'handles new lines between numbers' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
    it 'supports different delimiters' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
    it 'raises an exception for negative numbers' do
      expect { StringCalculator.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
    end
    it 'shows all negative numbers in the exception message' do
      expect { StringCalculator.add("1,-2,-3,4") }.to raise_error("negative numbers not allowed: -2, -3")
    end
  end
end
