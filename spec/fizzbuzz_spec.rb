require 'minitest/spec'
require 'minitest/autorun'
require 'fizzbuzz'

describe Fizzbuzz do
  before do
    mapping = {
      3 => 'Fizz',
      5 => 'Buzz',
      7 => 'Sivv'
    }
    @fizzbuzz = Fizzbuzz.new(mapping)
  end

  it 'returns input number not when input is not divisible by 3 or 5' do
    @fizzbuzz.buzz(8).must_equal 8
  end

  it 'returns Fizz when input is divisible by 3' do
    @fizzbuzz.buzz(3).must_match 'Fizz'
  end

  it 'returns Fizz when input is divisible by 5' do
    @fizzbuzz.buzz(5).must_match 'Buzz'
  end

  it 'returns FizzBuzz when input is divisible by 3 and 5' do
    @fizzbuzz.buzz(15).must_match 'FizzBuzz'
  end

  it 'returns Sivv when number is divisible by 7' do
    @fizzbuzz.buzz(7).must_match 'Sivv'
  end

  it 'returns FizzBuzzSivv when number is divisible by 3,5,7 (ordered)' do
    @fizzbuzz.buzz(105).must_match 'FizzBuzzSivv'
  end

  it 'returns FizzBuzzSivv when number is divisible by 3,5,7 (unordered)' do
    @fizzbuzz.buzz(105).must_match 'FizzBuzzSivv'
  end
end
