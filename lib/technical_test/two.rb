class TechnicalTest::Two
  def combine_arrays(a1, a2)
    a3 = []
    while a1.any? || a2.any?
      a3 << a1.shift if a1.any?
      a3 << a2.shift if a2.any?
    end
    a3
  end
end
