require 'minitest/spec'
require 'minitest/autorun'
require 'fizzbuzz'

describe Fizzbuzz do
  it 'returns input number not when input is not divisible by 3 or 5' do
    Fizzbuzz.fizzbuzz(8, {}).must_equal 8
  end

  it 'returns Fizz when input is divisible by 3' do
    opt = { 3 => 'Fizz' }
    Fizzbuzz.fizzbuzz(3, opt).must_match 'Fizz'
  end

  it 'returns Fizz when input is divisible by 5' do
    opt = { 5 => 'Buzz' }
    Fizzbuzz.fizzbuzz(5, opt).must_match 'Buzz'
  end

  it 'returns FizzBuzz when input is divisible by 3 and 5' do
    opt = { 3 => 'Fizz', 5 => 'Buzz' }
    Fizzbuzz.fizzbuzz(15, opt).must_match 'FizzBuzz'
  end

  it 'returns Sivv when number is divisible by 7' do
    opt = { 7 => 'Sivv' }
    Fizzbuzz.fizzbuzz(7, opt).must_match 'Sivv'
  end

  it 'returns FizzBuzzSivv when number is divisible by 3,5,7 (ordered)' do
    opt = { 3 => 'Fizz', 5 => 'Buzz', 7 => 'Sivv' }
    Fizzbuzz.fizzbuzz(105, opt).must_match 'FizzBuzzSivv'
  end

  it 'returns FizzBuzzSivv when number is divisible by 3,5,7 (unordered)' do
    opt = { 3 => 'Fizz', 7 => 'Sivv', 5 => 'Buzz' }
    Fizzbuzz.fizzbuzz(105, opt).must_match 'FizzBuzzSivv'
  end
end
