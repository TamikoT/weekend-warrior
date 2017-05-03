class Hamming
  def self.compute(a,b)
    unless a.length == b.length
      raise ArgumentError
    end
    count = 0
    (0...a.length).each do |i|
      count += 1 if a[i] != b[i]
    end
    return count
  end
end
