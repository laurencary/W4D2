require_relative "../pieces/piece.rb"
require_relative "../pieces/null_piece.rb"
require_relative "../pieces/bishop.rb"
require_relative "../pieces/queen.rb"
require_relative "../pieces/rook.rb"
require_relative "../pieces/king.rb"
require_relative "../pieces/knight.rb"
require_relative "../pieces/pawn.rb"
require 'byebug'

class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) { Array.new(8, NullPiece.instance) }

        (0..7).each do |i|
            if i == 0
                @rows[i][0] = Rook.new(:black, self, [i,0])
                @rows[i][1] = Knight.new(:black, self, [i,1])
                @rows[i][2] = Bishop.new(:black, self, [i,2])
                @rows[i][3] = Queen.new(:black, self, [i,3])
                @rows[i][4] = King.new(:black, self, [i,4])
                @rows[i][5] = Bishop.new(:black, self, [i,5])
                @rows[i][6] = Knight.new(:black, self, [i,6])
                @rows[i][7] = Rook.new(:black, self, [i,7])

            elsif i == 1 
                (0..7).each do |j|
                    @rows[i][j] = Pawn.new(:black, self, [i,j])
                end
            elsif i == 6
                (0..7).each do |j|
                    @rows[i][j] = Pawn.new(:white, self, [i,j])
                end
            elsif i == 7
                @rows[i][0] = Rook.new(:white, self, [i,0])
                @rows[i][1] = Knight.new(:white, self, [i,1])
                @rows[i][2] = Bishop.new(:white, self, [i,2])
                @rows[i][3] = Queen.new(:white, self, [i,3])
                @rows[i][4] = King.new(:white, self, [i,4])
                @rows[i][5] = Bishop.new(:white, self, [i,5])
                @rows[i][6] = Knight.new(:white, self, [i,6])
                @rows[i][7] = Rook.new(:white, self, [i,7])
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
            if piece.empty?
                raise "no piece at start position"
            else
                self[start_pos] = NullPiece.instance
                piece.pos = end_pos
                self[end_pos] = piece
                # piece.board = @rows
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

