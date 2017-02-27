class Alouette
  # initialize
  attr_reader :line_parts

  @@parts = ["la tête", "le bec", "les yeux", "le cou", "les ailes",
    "les pattes"]
  def initialize
  end

  # array of all changing parts in order

  def lines_for_verse(number)
#   until (1..6)include?(3)
#     raise ArgumentError.new("Must be between 1 and 6")
#   end
  @line_parts = Array.new
  for index in (number-1).downto(0)
     @line_parts << "Et #{@@parts[index]}!"
		end
	end

  # new array to hold all elements
  # count down to get indices
  # "Et" + value + "!"
  # output: ["Et les yeux!", "Et le bec!", "Et la tête!"]

  def verse
  end

  def sing
  end

  # REPEATING LINES
  # pre-verse
  ["Alouette, gentille alouette," "Alouette, je te plumerai."]
  # post-verse
  ["Alouette!", "Alouette!", "A-a-a-ah"]
end

a = Alouette.new
a.lines_for_verse(2)
print a.line_parts
