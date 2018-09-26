class TechnicalTest::Three
  def fibo(numb)
    array = [0, 1]
    (numb).times do |i|
    	new_value = array[array.length - 1] + array[array.length - 2]
    	array << new_value
    end
	array[array.length - 2]
  end
end
