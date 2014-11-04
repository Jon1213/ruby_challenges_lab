# Problem 1
# puts "Enter the temperature scale you wish to convert to (1 for Celsius to Fahrenheit, 2 for Fahrenheit to Celsius)"
# temp_scale = gets.chomp.to_i
# puts "Enter the temperature"
# temp = gets.chomp.to_f
# if temp_scale == 1
# 	conv_temp = temp*9/5 + 32
# 	puts "#{temp} degrees Celsius is equal to #{conv_temp} Fahrenheit"
# else
# 	conv_temp = (temp-32)*5/9
# 	puts "#{temp} degrees Fahrenheit is equal to #{conv_temp} degrees Celsius"
# end

# Problem 2
# puts "What calculation would you like to do? (add, sub, mult, div)"
# op = gets.chomp
# puts "What is number 1?"
# num1 = gets.chomp.to_f
# puts "What is number 2?"
# num2 = gets.chomp.to_f
# if op == "add"
# 	res = num1 + num2
# elsif op == "sub"
# 	res = num1 - num2
# elsif op == "mult"
# 	res = num1*num2
# else
# 	res = num1/num2
# end
# puts "Your result is #{res}"

# Problem 3
# puts "Hand me a sentence, please."
# str = gets.chomp
# str_arr = str.split(' ')
# word_count = {}
# str_arr.each do |word|
# 	if word_count[word]
# 		word_count[word] += 1
# 	else
# 		word_count[word] = 1
# 	end
# end
# puts word_count

# Problem 4
# cur_bal = 0
# done = "no"
# until done == "yes"
# 	puts "What would you like to do: deposit, withdrawal, check_balance?"
# 	action = gets.chomp
# 	if action == "deposit"
# 		puts "How much would you like to deposit?"
# 		amount = gets.chomp.to_f
# 		cur_bal += amount
# 		puts "Your current balance is equal to #{cur_bal}"
# 	elsif action == "withdrawal"
# 		puts "How much would you like to withdraw?"
# 		amount = gets.chomp.to_f
# 		cur_bal -= amount
# 		puts "Your current balance is equal to #{cur_bal}"
# 	else
# 		puts "Your current balance is equal to #{cur_bal}"
# 	end
# 	puts "Are you done?"
# 	done = gets.chomp
# end

# Problem 5

def guessgame
	val = rand(100)
	done = false
	guess_count = 1
	puts "Guess a number between 1 and 100. It'll be a number game of Marco Polo."
	until done == true
		puts "What's your guess?"
		checkval = gets.chomp.to_i
		if checkval == val
			puts "You've found it! #{val} is the number. It took you #{guess_count} tries."
			done = true
		elsif checkval > val
			puts "#{checkval} is larger than the number."
			guess_count += 1
		else
			puts "#{checkval} is smaller than the number"
			guess_count += 1
		end
	end
end

guessgame