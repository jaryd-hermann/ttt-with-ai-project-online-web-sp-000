class Game
  attr_accessor :board, :player_1, :player_2, :user_input

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

  def initialize(player_1=Players::Human.new("X"), player_2=Players::Human.new("O"), board=Board.new)
      @player_1 = player_1
      @player_2 = player_2
      @board = board
  end

  def current_player
  board.turn_count.odd? ? player_2 : player_1
  end

  def won?
    WIN_COMBINATIONS.each do |combination|   #[0,1,2] which is board range (0-8)
        if @board.cells[combination[0]] == @board.cells[combination[1]] &&
          @board.cells[combination[1]] == @board.cells[combination[2]] &&
          @board.taken?(combination[0]+1)
          #Need to +1, because #taken? rspec test is working off user_input range (1-9)
          return combination
        end
      end
    return false
  end

  def draw?
    @board.full? && !won? ? true : false
  end

  def over?
  (won? || draw?) ? true : false
  end

  def winner
    if won?
      combination = won?
      @board.cells[combination[0]] # X or O
    end
  end

  def turn
    puts "Please enter a number 1-9:"
    @user_input = current_player.move(@board)
    if @board.valid_move?(@user_input)
      @board.update(@user_input, current_player)
    else puts "Please enter a number 1-9:"
      @board.display
      turn
    end
    @board.display
  end

  def play
    turn until over?
    if won?
      puts "Congratulations #{winner}!"
    elsif draw?
      puts "Cat's Game!"
    end
  end

end #end class
