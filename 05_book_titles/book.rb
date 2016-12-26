class Book
# write your code here
attr_accessor :title

	def title=(new_title)

	little_words = ['and', 'the', 'a', 'an', 'or', 'but', 'for', 'in', 'as', 'of', 'up', 'nor', 'on', 'at', 'to', 'by', 'over', 'with']
	arr = Array.new
	new_array = Array.new

		if new_title.include?(" ")

			arr = new_title.split(" ")

			arr.each do |a|

				if little_words.include?(a) == false
					a.capitalize!
				end

			new_array.push a
			new_array[0].capitalize!

			end

			new_string = new_array.join(" ")

			@title = new_string
		else

			@title = new_title.capitalize
		end
	end
end
