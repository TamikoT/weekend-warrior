class Alouette

  attr_accessor :verse_parts

  PARTS = [ "la tête", "le bec", "les yeux", "le cou", "les ailes",
    "les pattes", "la queue", "le dos"]

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

      verse = ""
      2.times do
        verse += "Je te plumerai #{PARTS[number]}.\n"
      end
      array_of_parts.each do |each_part|
        2.times do
          verse += "#{each_part}\n"
        end
      end
      verse += "Alouette!\nAlouette!\nA-a-a-ah"
      return verse
    end

    def self.sing
      whole_song = ""
      refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
      whole_song += refrain
      (0..7).each do |index|
        whole_song += "\n\n#{verse(index)}\n\n#{refrain}"
      end
      return whole_song
    end
  end
