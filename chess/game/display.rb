require 'colorize'
require_relative 'cursor'
require_relative "board"

class Display

    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0],board)
        
    end

    def render
        @board.rows.each do |row|
            puts row.join(" ")
        end
    end
end

b = Board.new
c = Display.new(b)
c.render