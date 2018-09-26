class TechnicalTest::Two
  def combine_arrays(a1, a2)
  	number_of_iteration = a1.length if a1.length >= a2.length 
  	number_of_iteration = a2.length if a1.length < a2.length 
  	combined_array = []
  	number_of_iteration.times do |i|
  		combined_array << a1[i] unless a1[i].nil?
  		combined_array << a2[i] unless a2[i].nil?
  	end
  	combined_array
  end
end
