require_relative "../pieces/piece.rb"
require_relative "../pieces/null_piece.rb"
require_relative "../pieces/bishop.rb"
require_relative "../pieces/queen.rb"
require_relative "../pieces/rook.rb"
require_relative "../pieces/king.rb"
require_relative "../pieces/knight.rb"
require_relative "../pieces/pawn.rb"

class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) { Array.new(8, NullPiece.instance) }

        (0..7).each do |i|
            if i <= 1 
                (0..7).each do |j|
                    @rows[i][j] = King.new(:white, self, [i,j])
                end
            elsif i >= 6
                (0..7).each do |j|
                    @rows[i][j] = Knight.new(:black, self, [i,j])
                end
            end
        end

    end

    def [](pos)
        x, y = pos
        @rows[x][y]
    end

    def []=(pos, val)
        x, y = pos
        @rows[x][y] = val
    end

    def move_piece(start_pos, end_pos)
        puts valid_pos?(end_pos)
        if valid_pos?(start_pos) && valid_pos?(end_pos)
            piece = self[start_pos]
            if piece.nil?
                raise "no piece at start position"
            else
                self[start_pos] = nil
                piece.pos = end_pos
                self[end_pos] = piece
                piece.board = @rows
            end
        else 
            raise "position given, not on board"
        end
    end

    def valid_pos?(pos)
        if pos[0] < 0 || pos[0] > 7 || pos[1] < 0 || pos[1] > 7
            return false
        else
            true
        end
    end

    def add_piece(piece, pos)
    end

    def checkmate?(color)
    end

    def in_check?(color)
    end

    def find_king(color)
    end

    def pieces
    end

    def dup
    end
    
    def move_piece!(color, start_pos, end_pos)
    end

    private
    attr_reader :NullPiece
end