class TechnicalTest::Three
  def fibo(number_of_element)
    return nil if number_of_element < 0
    return 0 if number_of_element == 0
    return 1 if number_of_element == 1
    fibo = [0, 1]
    (number_of_element-1).times do
      fibo << fibo[-1] + fibo[-2]
    end
    fibo.last
  end
end
