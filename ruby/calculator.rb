def calc(a, b, operator)
	a.send(operator, b)
end

#p calc 42, 23, :+
#p calc 16, 25, :*
#p calc 18, 9, :/
#p calc 98, 67, :-

collection = {}
puts "Enter a number or 'q' to end program"
while a = gets.chomp
  case a
  when "q"
    puts "Thanks for using the CalcIT!"
    p collection
    break
  else
  	a = a.to_i
    puts "Enter another number"
    b = gets.chomp.to_i
    puts "Enter your operator (+,-,*,/)"
    operator = gets.chomp
    calculation = calc(a, b, operator)
  end
  collection[a] = b, operator
  p "#{a} #{operator}#{b} = #{calculation}"
end