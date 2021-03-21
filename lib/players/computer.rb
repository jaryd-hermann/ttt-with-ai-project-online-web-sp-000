module Players
  class Computer < Player

#The human player must implement a #move method that takes in a board argument and allows a human player to enter a move via the CLI.
#The method should return the value the user enters.
# Even though the method accepts a board argument, it does not need to use it.

    def move(board)
      if board.cells[4] == " "
       "5"
     elsif board.cells[0] == " "
       "1"
     elsif board.cells[2] == " "
       "3"
     elsif board.cells[6] == " "
       "7"
     elsif board.cells[8] == " "
       "9"
     elsif board.cells[1] == " "
       "2"
     elsif board.cells[3] == " "
       "4"
     elsif board.cells[5] == " "
       "6"
     elsif board.cells[7] == " "
       "8"
     end
    end

  end #end class
end #end module
