require_relative "../modules/slideable.rb"


class Piece
    include Slideable
    attr_accessor :color, :board, :pos

    def initialize(color, board, pos)
        @color, @board, @pos = color, board, pos
    end

    def to_s
        self.symbol
    end

    def [](pos)
        x, y = pos
        @board.rows[x][y]
    end

    def empty?
        self.class == NullPiece
    end

    def valid_moves
    end

    def symbol
    end

    private
    def move_into_check?(end_pos)
    end
        
end