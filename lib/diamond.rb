class Diamond
	def build(input)
		@letters = ("A"..input).to_a
		draw_diamond
	end

  def draw_diamond
		output= ""

		# For each char call draw_base.
		@letters.each do |char| 
			output << draw_base(char)
		end

		# For each reverse char without first position call draw_base.
		@letters.reverse[1..-1].each do |char| 
			output << draw_base(char)
		end

		output
	end

  def draw_base (letter)
		base = ""

		# For each reverse char assign letter_or_underline to base.
		@letters.reverse.each do |char| 
			base << letter_or_underline(char, letter)
		end

		# For each char without first position assign letter_or_underline to base.
		@letters[1..-1].each do |char| 
			base << letter_or_underline(char, letter)
		end

		base << "\n"
  end
	
	def letter_or_underline (char, letter)
		# Return letter if char is equal letter
    (char == letter) ? letter : '_'
  end
end