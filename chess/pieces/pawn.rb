require_relative "piece"

class Pawn < Piece
    TOP_DIAGONAL_DIRS = [[1,1],[1,-1]]
    # BOTTOM_DIAGONAL_DIRS = [[-1,-1],[-1,1]]
    TOP_HORIZONTAL_DIRS = [[1,0],[2,0]]
    # BOTTOM_HORIZONTAL_DIRS = [[-1,0],[-2,0]]

    def moves
        potential_moves = []
        

    end

    def symbol
    end

    private
    def at_start_row?
        (self.pos[0] == 1 && self.color == :white) ||
        (self.pos[0] == 6 && self.color == :black)
    end

    def forward_dir
        if self.color == :white
            return 1
        else
            return -1
        end
    end

    def forward_steps
        
    end

    def side_attacks
        potential_moves = []
        TOP_DIAGONAL_DIRS.each do |attack|
            new_row = self.pos[0] + attack[0]
            new_col = self.pos[1] + attack[1]
            potential_pos = [new_row, new_col]
            if self[potential_pos].color != self.color && self[potential_pos].empty?
                potential_moves << potential_pos
            end
        end
        potential_moves
    end
end