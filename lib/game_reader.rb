# require_relative '../test/input.csv'
$LOAD_PATH.unshift(File.expand_path(".", _dir_))  # ~> NameError: undefined local variable or method `_dir_' for main:Object
require 'input.csv'
class GameReader

  plays = File.read("input.csv")

end

# ~> NameError
# ~> undefined local variable or method `_dir_' for main:Object
# ~>
# ~> /Users/marinacorona/Turing/1602_Module1/assessments/scrabble/lib/game_reader.rb:2:in `<main>'
