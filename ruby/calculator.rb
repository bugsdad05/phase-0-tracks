def calc(a, b, operator)
	a.send(operator, b)
end

p calc 42, 23, :+
p calc 16, 25, :*
p calc 18, 9, :/
p calc 98, 67, :-
#def sum a,b
# yield a,b
#end
