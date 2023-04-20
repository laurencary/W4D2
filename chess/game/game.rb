require_relative "board"
require_relative "display"

class Game
    attr_reader :display, :board

    def initialize
        @board = Board.new
        @display = Display.new(@board)
        @players = {}
    end


    def make_move

        until false
            @display.render
            # puts "Enter starting position e.g. 2,2"
            user_input = @display.cursor.get_input
            # user_input = gets.chomp.split(",").to_a.map(&:to_i)
            # puts "Enter ending position e.g. 1,4"
            user_input_2 = @display.cursor.get_input
            # user_input_2 = gets.chomp.split(",").to_a.map(&:to_i)
            @board.move_piece(user_input, user_input_2)
        end
    end

end

g = Game.new
g.make_move