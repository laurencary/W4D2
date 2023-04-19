require_relative 'piece'
require_relative "../modules/stepable.rb"

class Knight < Piece
  include Stepable

  def symbol
    '♞'.colorize(color)
  end

#   protected

  def move_diffs
    moves(KNIGHT_POTENTIAL_MOVES)
  end
end