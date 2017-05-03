class Hamming
  def self.compute(a,b)
    count = 0
    if a.length == b.length
      (0...a.length).each do |i|
        count += 1 if a[i] != b[i]
      end
    end
    return count
  end
end
