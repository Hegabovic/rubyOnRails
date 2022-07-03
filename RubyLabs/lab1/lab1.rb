#!/usr/bin/ruby
require 'date'

def creat_copy_string(number = 1, text = "a")
  $i = 1
  until $i > number do
    puts(text * $i)
    $i += 1
  end
end

creat_copy_string(5, "b")

def is_start_with_if(text)
  if text.start_with?("if")
    puts "TRUE"
  else
    puts "FALSE"
  end
end

is_start_with_if("jedai")

def swap_first_last_char(text)
  $temp = text[0]
  text[0] = text[text.length - 1]
  text[text.length - 1] = $temp
  puts text
end

def replace_first_char_with_last(text)
  text[0] = text[text.length - 1]
  puts text
end

replace_first_char_with_last("Python")

def check_leap_year(year)
  if Date.leap?(year)
    puts("Leap")
  else
    puts("Not Leap")
  end
end

check_leap_year(2020)

def rotate_numbers(numbers)
  print(numbers.rotate(-1))
  puts
end

rotate_numbers([2, 5, 1])

def array_sum_except_17(nums)
  $i = 0
  $sum = 0
  while $i < nums.length
    if nums[$i] == 17
      $i += 1
    else
      $sum += nums[$i]
    end
    $i += 1
  end
  puts $sum
end

array_sum_except_17([3, 5, 1, 17])