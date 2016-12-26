#write your code here
def add (a,b)
  a+b
end

def subtract (a,b)
  a-b
end

def sum (array)
  array.inject(0){|sum,x| sum + x }
end

def multiply(array)
  array.inject(1){|sum,x| sum*x}
end

def power a,b
	a ** b
end

def factorial a

	if a == 0 || a == 1
		return 1
	else

	fact = a * factorial(a-1)
	a -= 1

	fact

	end

end
