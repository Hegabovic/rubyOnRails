class Calculator
  def calc
    puts "enter first number : "
    num1 = gets.chomp
    puts "enter operator : "
    operator = gets.chomp
    puts "enter second number: "
    num2 = gets.chomp

    number1 = num1.to_f
    number2 = num2.to_f

    case operator
    when "+"
      puts "#{number1} + #{number2} = #{number1 + number2}"
    when "-"
      puts "#{number1} - #{number2} = #{number1 - number2}"
    when "*"
      puts "#{number1} * #{number2} = #{number1 * number2}"
    when "/"
      if number2 == 0 or number1 == 0
        puts "you cant divide by zero "
      else
        div = number1.div(number2)
        puts "#{number1} / #{number2} = #{div.to_f}"
      end

    else
      puts "you only can use + , - , * , /"
    end
  end
end

calc = Calculator.new
puts calc.calc