require 'minitest/spec'
require 'minitest/autorun'
require 'fizzbuzz'

describe Fizzbuzz do
  it 'returns input number not when input is not divisible by 3 or 5' do
    Fizzbuzz.fizzbuzz(8).must_equal 8
  end

  it 'returns Fizz when input is divisible by 3' do
    Fizzbuzz.fizzbuzz(3).must_match 'Fizz'
  end

  it 'returns Fizz when input is divisible by 5' do
    Fizzbuzz.fizzbuzz(5).must_match 'Buzz'
  end

  it 'returns FizzBuzz when input is divisible by 3 and 5' do
    Fizzbuzz.fizzbuzz(15).must_match 'FizzBuzz'
  end

  it 'returns Sivv when number is divisible by 7' do
    Fizzbuzz.fizzbuzz(7).must_match 'Sivv'
  end
end
