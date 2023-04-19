require_relative 'piece'
require_relative "../modules/stepable.rb"

class King < Piece
  include Stepable

  def symbol
    '♚'.colorize(color)
  end

#   protected

  def move_diffs
    moves(KING_POTENTIAL_MOVES)
  end
end