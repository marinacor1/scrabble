# require_relative '../test/input.csv'
$LOAD_PATH.unshit(File.exapnd_path(".", _dir_))
require 'input.csv'
class GameReader

  plays = File.read("input.csv")

end
