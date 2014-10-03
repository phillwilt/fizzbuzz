class Fizzbuzz
  def initialize(mapping)
    @mapping = mapping.sort.to_h
  end

  def buzz(n)
    s = ''
    @mapping.keys.each do |num|
      s += @mapping[num] if n % num == 0
    end
    s.empty? ? n : s
  end
end
