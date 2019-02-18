class TechnicalTest::Four
  def largest_number_from_array(array)
    array.map! { |n| n.to_s }.sort_by! { |n| n[0] }.reverse!.join
  end
end
