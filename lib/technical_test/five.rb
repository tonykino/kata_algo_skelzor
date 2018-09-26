class TechnicalTest::Five
	##############################################################################################
	# MA SOLUTION ORIGINALE
	##############################################################################################	
	# def perform
	# 	combinations_of_signs = self.combinations_of_signs(8)
	# 	list_of_matrix = []
	# 	combinations_of_signs.each_with_index do |combination_of_signs|
	# 		self.combinations_of_positions(combination_of_signs.length).each do |combination_of_positions|
	# 			matrix = [1, nil, 2, nil, 3, nil, 4, nil, 5, nil, 6, nil, 7, nil, 8, nil, 9]
	# 			combination_of_signs.each_with_index do |bit, i|
	# 				matrix[combination_of_positions[i]] = self.sign_from_bit(bit)
	# 			end
	# 			list_of_matrix << matrix.compact.join
	# 		end
	# 	end
	# 	solutions = []
	# 	list_of_matrix.each_with_index do |matrix, i|
	# 		solutions << list_of_matrix[i] if self.compute_matrix(matrix) == 100 
	# 	end
	# 	solutions
	# end

	# def combinations_of_positions(length)
	# 	(1..8).to_a.combination(length).to_a.map { |combination|
	# 		combination.map { |index| 2 * index - 1 }
	# 	}
	# end

	# def sign_from_bit(bit)
	# 	case bit
	# 	when 0
	# 		" - "
	# 	when 1
	# 		" + "
	# 	else
	# 	end
	# end

	# def combinations_of_signs(max_number_of_signs)
	# 	combination_of_operators = []
	# 	max_number_of_signs.times do |i|
	#  		(0..(2**(i+1)-1)).each do |int|
	# 		  array = int.digits(2).reverse
	# 			while array.length < i + 1
	# 			  array.insert(0, 0)
	# 		  end
	# 			combination_of_operators << array
	# 		end
	# 	end
	# 	combination_of_operators
	# end

	# def compute_matrix(matrix)
	# 	int_to_add = []
	# 	int_to_substract = []
	# 	array = matrix.split(" ")
	# 	array.each_with_index do |sign, i|
	# 		int_to_add << array[i] if i == 0
	# 		int_to_add << array[i + 1] if sign == "+"
	# 		int_to_substract << array[i + 1] if sign == "-"
	# 	end
	# 	a = int_to_add.map { |number| number.to_i }.inject{ |sum, n| sum + n }
	# 	b = int_to_substract.map { |number| number.to_i }.inject{ |sum, n| sum + n }
	# 	b.nil? ? a : (a - b)
	# end
	##############################################################################################	


	##############################################################################################
	# SOLUTION DE DENIS
	##############################################################################################
	# def perform
	#   pb_5_aux([2,3,4,5,6,7,8,9],["1"]).select{|res| res.calc == 100}.map{|struct| struct.str}
	# end

	# Result = Struct.new(:calc, :str)

	# def pb_5_aux(rest, computed)
	#   return computed.map{|str| Result.new(eval(str), str)} if rest.empty?
	#   next_num, *q = rest
	#   computed.map! do |res|
	#     [
	#       "#{res}#{next_num}",
	#       "#{res} + #{next_num}",
	#       "#{res} - #{next_num}"
	#     ]
	#   end.flatten!
	#   pb_5_aux(q, computed)
	# end
	##############################################################################################


	##############################################################################################
	# MA SOLUTION A PARTIR DE LA SOLUTION DE DENIS
	##############################################################################################
	def perform
	  array_of_strings(9).select{|res| res.calc == 100}.map(&:str)
	end

	Result = Struct.new(:calc, :str)

	def array_of_strings(number_of_consecutive_integers)
		array_of_strings = ["1"]
	  2.upto(number_of_consecutive_integers).each do |next_num|
		 	array_of_strings.map! do |shape|
		    [
		      "#{shape}#{next_num}",
		      "#{shape} + #{next_num}",
		      "#{shape} - #{next_num}"
		    ]
		  end.flatten!
		end
		array_of_strings.map{|str| Result.new(eval(str), str)}
	end
	##############################################################################################

end
