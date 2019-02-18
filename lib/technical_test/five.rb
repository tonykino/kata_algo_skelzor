class TechnicalTest::Five
  def perform
    nbs = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    combinations = [' + ', ' - ', ''].repeated_permutation(8).to_a
    results = []
    combinations.each do |comb|
      array_to_evaluate = combine_arrays(nbs.dup, comb.dup)
      result = eval(array_to_evaluate.join)
      results << array_to_evaluate.join if result == 100
    end
    results
  end

  def combine_arrays(a1, a2)
    a3 = []
    while a1.any? || a2.any?
      a3 << a1.shift if a1.any?
      a3 << a2.shift if a2.any?
    end
    a3
  end
end
