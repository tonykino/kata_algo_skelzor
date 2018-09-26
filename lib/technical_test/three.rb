require 'pry'
class TechnicalTest::Three
	#####################################################################
	# ORIGINAL SOLUTION
	#####################################################################
  # def fibo(numb)
  #   array = [0, 1]
  #   (numb).times do |i|
  #   	new_value = array[array.length - 1] + array[array.length - 2]
  #   	array << new_value
  #   end
 	# 	array[array.length - 2]
  # end
	#####################################################################

	####################################################################
	# Slightly better 
	####################################################################
  def fibo(numb)
    array = [0, 1]
    numb.times do
	    array.push(array[array.length - 1] + array[array.length - 2])
	  end
	  array[array.length - 2]
  end
	####################################################################

end
