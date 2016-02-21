require_relative '../test/input.csv'  # ~> LoadError: cannot load such file -- /Users/marinacorona/Turing/1602_Module1/assessments/scrabble/test/input.csv
class GameReader

  plays = File.read("../test/input.csv")

end

# ~> LoadError
# ~> cannot load such file -- /Users/marinacorona/Turing/1602_Module1/assessments/scrabble/test/input.csv
# ~>
# ~> /Users/marinacorona/Turing/1602_Module1/assessments/scrabble/lib/game_reader.rb:1:in `require_relative'
# ~> /Users/marinacorona/Turing/1602_Module1/assessments/scrabble/lib/game_reader.rb:1:in `<main>'
