class Board
  attr_accessor :cells
  @cells = []

  def reset!
   self.cells = Array.new(9, " ")
 end


  def initialize
    # sets the cells of the board to a 9 element array of " "
    reset!
  end

  def display
    #prints the board
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
  end

  def position(user_input)
    #converts the user's input (a string) into an integer
  #converts the user's input from the user-friendly format (on a 1-9 scale) to the array-friendly format
    self.cells[user_input.to_i-1]
  end

  def full?
    self.cells.all? {|cell| cell == "X" || cell == "O"}
  end

  def turn_count
    self.cells.count("X") + self.cells.count("O")
  end

  def taken?(position)
    self.cells[position.to_i-1] == "X" || self.cells[position.to_i-1] == "O"
  end

  def valid_move?(position)
    position.to_i > 0 && position.to_i <= 9 && !taken?(position)
  end

  def update(position, player)
    self.cells[position.to_i-1] = player.token
  end

end #end of class
