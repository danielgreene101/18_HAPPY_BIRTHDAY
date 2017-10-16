# Write a method that takes your birthday and a block, proc or lambda as arguments. When the method runs, for each of your birthdays that have passed, wishes you "Happy Birthday".

# If you used a proc in the first step, convert it to a block or vice versa. Write another method that takes your block or proc as an explicit argument. This method should calculate how old you will be in 2020. The output should show the years starting from this year and count up. Instead of 2020, the output should be "Happy Birthday"




def myB (arg)
	return Proc.new{ |n| arg - n}
end

date = myB(2017)

date.call(1994).times do
	puts "Happy Birthday"
end

def call_explicit_block(block)
	time = myB(block)
	time.call(2017) 
	2017.upto(2019) { |i| puts i, " "}
	puts "Happy Birthday"
end
call_explicit_block(2020)




