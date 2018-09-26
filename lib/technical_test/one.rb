class TechnicalTest::One
  def sum_with_for_loop(array)
  	sum = 0
    for i in 0...array.length
    	sum += array[i]
    end
    sum
  end

  def sum_with_while_loop(array)
  	sum = 0
  	i = 0
    while i < array.length
    	sum += array[i]
    	i += 1
    end
    sum
  end

  def sum_with_recursion(array)
	 array.inject { |sum, n| sum + n }
  end
end
