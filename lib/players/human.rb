module Players
  class Human < Player

#The human player must implement a #move method that takes in a board argument and allows a human player to enter a move via the CLI.
#The method should return the value the user enters.
# Even though the method accepts a board argument, it does not need to use it.

    def move(board)

      case
      when board.cells[4] == " "
        "5"
      when board.cells[0] == " "
        "1"
      when board.cells[2] == " "
        "3"
      when board.cells[6] == " "
        "7"
      when board.cells[8] == " "
        "9"
      when board.cells[1] == " "
        "2"
      when board.cells[3] == " "
        "4"
      when board.cells[5] == " "
        "6"
      when board.cells[7] == " "
        "8"
      end
    end

  end #end class
end #end module
