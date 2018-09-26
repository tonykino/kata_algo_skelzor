class TechnicalTest::Two

  ################################################################
  # SOLUTION ORIGINALE
  ################################################################
  # def combine_arrays(a1, a2)
  # 	number_of_iteration = a1.length if a1.length >= a2.length 
  # 	number_of_iteration = a2.length if a1.length < a2.length 
  # 	combined_array = []
  # 	number_of_iteration.times do |i|
  # 		combined_array << a1[i] unless a1[i].nil?
  # 		combined_array << a2[i] unless a2[i].nil?
  # 	end
  # 	combined_array
  # end
  ################################################################

  ################################################################
  # SOLUTION avec séparation des concerns
  ################################################################
  def combine_arrays(a1, a2)
    combined_array = []
    self.longest_array(a1,a2).length.times do |i|
      combined_array << a1[i] unless a1[i].nil?
      combined_array << a2[i] unless a2[i].nil?
    end
    combined_array
  end  

  def longest_array(a1, a2)
    array = [a1.length, a2.length]
    index = array.find_index(array.max)
    index == 0 ? a1 : a2
  end
  ################################################################
end
