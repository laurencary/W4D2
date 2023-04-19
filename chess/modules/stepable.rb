

module Stepable

    KNIGHT_POTENTIAL_MOVES = [[-1, -2], [-1, 2], [1, -2], [1, 2],[-2,-1],[2,-1],[-2,1],[2,1]]
    KING_POTENTIAL_MOVES = [[-1, -1],[-1,0], [-1, 1],[0,1], [1, 1],[1,0], [-1, 1],[0,-1]]



    def moves(dirs)
        potential_moves = []
        dirs.each do |move|
            new_row = self.pos[0] + move[0]
            new_col = self.pos[1] + move[1]
            potential_pos = [new_row, new_col]
            if (0..7).to_a.include?(new_row) && (0..7).to_a.include?(new_col)
                if self.board[potential_pos].color != self.color 
                    potential_moves << [new_row, new_col]
                end
            end
        end
        potential_moves

        

     # create array to collect moves

    # iterate through each of the piece's possible move_diffs
      # for each move_diff, increment the piece's position to generate a new position
      # add the new position to the moves array if it is:
        # on the board and empty
        # OR on the board and contains a piece of the opposite color

    # return the final array of moves
    end

    



end