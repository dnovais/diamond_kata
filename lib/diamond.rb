class Diamond
	def build(input)
		@input = input
		special_char = "_"
		break_point = "\n"
		range = ("A"..input).to_a
		range_size = range.size
		output = []

		# range.each_with_index do |char, index|
			base_diamond = set_base(range_size, special_char)
			draw_base = draw_base(base_diamond)
			draw_diamond(range)
		# end

	end

	def draw_diamond(range)
		range_size = range.size
		special_char = "_"
		output = ""

		base = range_size.even? ? special_char * (range_size + 1) : special_char * (range_size + 2)
		base_size = base.size

		range.each_with_index do |char, index|
			if range[index] == @input
				base[0] = char
				base[base_size - 1] = char
				output += base + "\n"
			else
				# puts "#{range[index]} - #{index}"
				# base[base_size - (range_size - index)] = range[index]
				# output += base + "\n"
			end
		end


		# range.reverse.each_with_index do |char, index|
		# 	puts "#{char} #{index + 1} = #{range.reverse[index+1]}"
		# end
		
		puts output
		p output
	end

	def draw_base(base)
		diamond_draw = ""
		base_size = base.size
		base_size.times do
			diamond_draw += base + "\n"
		end
		diamond_draw
	end

	def set_base(size, special_char)
		size.even? ? special_char * (size + 1) : special_char * (size + 2) 
	end
end

d = Diamond.new
d.build("C")
