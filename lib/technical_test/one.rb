class TechnicalTest::One
  def sum_with_for_loop(array)
    sum = 0
    for i in array do
      sum += i
    end
    sum
  end

  def sum_with_while_loop(array)
    sum = 0
    i = 0
    while !array[i].nil? do
      sum += array[i]
      i += 1
    end
    sum
  end

  def sum_with_recursion(array)
    sum = array.shift
    sum += sum_with_recursion(array) if array.any?
    sum
  end
end
