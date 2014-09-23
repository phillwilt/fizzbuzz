class Fizzbuzz
  def self.fizzbuzz(n, options)
    s = ''

    options.keys.sort!.each do |num|
      s += options.fetch(num) if n % num == 0
    end
    s.length > 0 ? s : n
  end
end
