#write your code here
def add(num1, num2)
	return num1 + num2
end


def subtract(num1, num2)
	return num1 - num2
end


def sum(numArray)
	result = 0
	numArray.each do |num|
		result += num
	end
	return result
end


def multiply(*args)
	if !args.length
		return 0
	end
	result = 1
	args.each do |num|
		result *= num
	end
	return result
end


def power(num1, num2)
	return num1 ** num2
end


def factorial(num)
	factorial = 1
	while num > 0
		factorial *= num
		num -= 1
	end
	return factorial
end