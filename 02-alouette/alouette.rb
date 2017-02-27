class Alouette

  attr_accessor :verse_parts

  PARTS = [ "la tête", "le bec", "les yeux", "le cou", "les ailes",
    "les pattes" ]

    def initialize
    end

    def self.lines_for_verse(number)
      verse_parts = Array.new
      # reverse order indices (stack)
      for index in (number).downto(0)
        verse_parts << "Et #{PARTS[index]}!"
      end
      return verse_parts
      # output(3): ["Et les yeux!", "Et le bec!", "Et la tête!"]
    end

    def self.verse(number)
      array_of_parts = lines_for_verse(number)

      verse_begin =
      "Alouette, gentille alouette,\nAlouette, je te plumerai.\n\n"

      verse_middle = ""
      2.times do
        verse_middle += "Je te plumerai #{array_of_parts[0]}.\n"
      end
      array_of_parts.each do |each_part|
        2.times do
          verse_middle += "#{each_part}\n"
        end
      end

      verse_end =
      "Alouette!\nAlouette!\nA-a-a-ah\n\n"

      return verse_begin + verse_middle + verse_end
    end

    def sing
    end

  end

  puts Alouette.lines_for_verse(2)
