def translate x

	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"

	if x.strip.include?(" ")

		arr = x.split(" ")
		new_array = Array.new

		arr.each do |a|

			if vowels.include?(a[0])
				a = a + "ay"

			new_array.push a

			elsif a[0..1] == "qu"

				a = a + a[0..1] + "ay"
				a = a[2..-1]

				new_array. push a
			elsif consonants.include?(a[0])
				if consonants.include?(a[1])
					if consonants.include?(a[2])
						a = a + a[0..2] + "ay"
						a = a[3..-1]
					else
					a = a + a[0..1] + "ay"
					a = a[2..-1]
					end
				else
					a = a + a[0] + "ay"
					a = a[1..-1]
				end

			new_array.push a
			end

		end

		new_string = new_array.join(" ")

		return new_string
	end


	if vowels.include?(x[0])
		x = x + "ay"

	elsif x[0..1] == "qu"
		x = x + x[0..1] + "ay"
		x = x[2..-1]

	elsif consonants.include?(x[0])

		if x[1..2] == "qu"
			x = x + x[0..2] + "ay"
				x = x[3..-1]

		elsif consonants.include?(x[1])

			if consonants.include?(x[2])
				x = x + x[0..2] + "ay"
				return x = x[3..-1]
			end
			x = x + x[0..1] + "ay"
			return x = x[2..-1]


		else
		x = x + x[0] + "ay"
		return x = x[1..-1]
		end
	end
end
