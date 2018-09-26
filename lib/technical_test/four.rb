class TechnicalTest::Four
  def largest_number_from_array(array)
  	combination_of_orders = array.permutation.to_a
  	array_of_possibilities = combination_of_orders.map { |order| order.join.to_i }
		array_of_possibilities.max.to_s
  end
end
