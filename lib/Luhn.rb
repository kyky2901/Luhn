module Luhn
  def self.is_valid?(number)
    @number = number

    array =  @number.digits.each_with_index.map do |n, i|
      (i % 2 != 0)? n * 2 : n 
    end

    array = array.map{|n| (n >= 10)? n - 9 : n}

    return (array.sum % 10 == 0)

  end
end