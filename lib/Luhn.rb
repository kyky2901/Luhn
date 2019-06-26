module Luhn
  def self.is_valid?(number)
    @number = number

    array =  @number.to_s.chars.map(&:to_i)

    array[0] = array[0] * 2
      if array[0] >= 10
        array[0] = array[0] - 9
      end
    array[2] = array[2] * 2
      if array[2] >= 10
        array[2] = array[2] - 9
      end
    array[4] = array[4] * 2
      if array[4] >= 10
        array[4] = array[4] - 9
      end
    array[6] = array[6] * 2
      if array[6] >= 10
        array[6] = array[6] - 9
      end
    array[8] = array[8] * 2
      if array[8] >= 10
        array[8] = array[8] - 9
      end
    array[10] = array[10] * 2
      if array[10] >= 10
        array[10] = array[10] - 9
      end
    array[12] = array[12] * 2
      if array[12] >= 10
        array[12] = array[12] - 9
      end
    array[14] = array[14] * 2
      if array[14] >= 10
        array[14] = array[14] - 9
      end

    value = array.sum
      if value % 10 == 0
        return true
      else 
        return false
      end
  end
end

# example = Luhn.is_valid?(377681478627336)
# puts example