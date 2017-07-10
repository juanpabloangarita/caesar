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
		elsif (x>96 && x<123 && (x+key)>122) || (x>64 && x<91 && (x+key)>90)
		  print ((x+key)-26).chr
		elsif  
		  print (x+key).chr
		end
	end
puts ""
end


crypto('YYY', 3)
crypto('aAA', 3)
crypto('098345 a b', 2)


