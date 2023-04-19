require_relative "piece"
require 'colorize'

class Pawn < Piece
    TOP_DIAGONAL_DIRS = [[1,1],[1,-1]]
    # BOTTOM_DIAGONAL_DIRS = [[-1,-1],[-1,1]]
    TOP_HORIZONTAL_DIRS = [[1,0],[2,0]]
    # BOTTOM_HORIZONTAL_DIRS = [[-1,0],[-2,0]]

    def moves
        forward_steps + side_attacks
    end

    def symbol
        '♟'.colorize(color)
    end

    # private
    def at_start_row?
        (self.pos[0] == 1 && self.color == :black) ||
        (self.pos[0] == 6 && self.color == :white)
    end

    def forward_dir
        if self.color == :black
            return 1
        else
            return -1
        end
    end

    def forward_steps
        potential_moves = []
        new_row = self.pos[0] + (1 * forward_dir)
        potential_pos = [new_row, self.pos[1]]
        potential_moves << potential_pos if self.board[potential_pos].empty?

        if at_start_row? == true
            new_row = self.pos[0] + (2 * forward_dir)  
            potential_moves << [new_row, self.pos[1]]  
        end
        potential_moves
    end

    def side_attacks
        potential_moves = []
        TOP_DIAGONAL_DIRS.each do |attack|
            new_row = self.pos[0] + (attack[0] * forward_dir)
            new_col = self.pos[1] + attack[1] 
            potential_pos = [new_row, new_col]
            if self.board[potential_pos].color != self.color && !self.board[potential_pos].empty?
                potential_moves << potential_pos
            end
        end 
        potential_moves
    end
end