class Fizzbuzz
  def self.fizzbuzz(n)
    s = ''
    s += 'Fizz' if n % 3 == 0
    s += 'Buzz' if n % 5 == 0

    s.length > 0 ? s : n
  end
end
