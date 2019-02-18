class TechnicalTest::Five
  include TechnicalTest

  def perform
    nbs = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    combinations = [' + ', ' - ', ''].repeated_permutation(8).to_a
    results = []
    combinations.each do |comb|
      array_to_evaluate = Two.new.combine_arrays(nbs.dup, comb.dup)
      result = eval(array_to_evaluate.join)
      results << array_to_evaluate.join if result == 100
    end
    results
  end
end
