class Alouette
  BODYPARTS = [
    "la tête",
    "le bec",
    "les yeux",
    "le cou",
    "les ailes",
    "les pattes",
    "la queue",
    "le dos"
  ]

    def self.lines_for_verse(number)
      verse_parts = Array.new
      for index in (number).downto(0) # reverse index BIRDPARTS starting with verse number
        verse_parts << "Et #{BODYPARTS[index]}!"
      end

      return verse_parts # ["Et les bec!", "Et le tête!"]
    end

    def self.verse(number)
      array_of_parts = lines_for_verse(number)

      verse = ""
      2.times do # "Je te plumerai (part)"
        verse += "Je te plumerai #{BODYPARTS[number]}.\n"
      end

      array_of_parts.each do |each_part| # "Et (part)!"
        2.times do
          verse += "#{each_part}\n"
        end
      end
      # verse end
      verse += "Alouette!\nAlouette!\nA-a-a-ah"

      return verse
    end

    def self.sing
      song = ""
      refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

      song += refrain # first refrain
      (0..7).each do |index|
        whole_song += "\n\n#{verse(index)}"
        whole_song += "\n\n#{refrain}"
      end

      return song
    end
  end

  print Alouette.sing
