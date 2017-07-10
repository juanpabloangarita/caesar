#puts "Hello, please type the phrase you want to encrypt followed by the key: "
#str = gets.chomp()
#key = gets.to_i
#puts "thanks bro, the string is #{str} and the key is #{key}"
# a 97
# z 122
# A 65
# Z 90
#
#

def crypto (str, key)
	str.each_byte do |x|
		key = key%26
		if x < 65 || (x>90 && x<97) || x>122
		print x.chr
		else
			if (x+key) >122
				print (((x+key)-122)+96).chr
			elsif x>96 && x+key >97
				print (x+key).chr
			end
			


		end
	end
puts ""
end


crypto('yyy', 55)
crypto('aaa', 3)
crypto('098345 a b', 2)


