class Game
  attr_accessor :board, :player_1, :player_2

  #defines a constant WIN_COMBINATIONS with arrays for each win combination
  WIN_COMBINATIONS = [
  [0,1,2], # top_row
  [3,4,5], # middle_row
  [6,7,8], # bottom_row
  [0,3,6], # left_column
  [1,4,7], # center_column
  [2,5,8], # right_column
  [0,4,8], # left_diagonal
  [6,4,2] # right_diagonal
  ]

  def initialize(board, player_1, player_2)
  end


end #end class
