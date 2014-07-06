  class Fixnum
    def multiple_of?(number)
      return true if self == number
      return false if number.even? && self.odd?
      return false if self < number
      (self - number).multiple_of?(number)
    end
  end

  def fizzbuzz(number)
    return 'FizzBuzz' if number.multiple_of?(15)
    return 'Buzz' if number.multiple_of?(5)
    return 'Fizz' if number.multiple_of?(3)
    "#{number}"
  end

  1.upto(100).map { |number| fizzbuzz(number) }