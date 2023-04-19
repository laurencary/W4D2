require_relative 'piece'
require_relative "../modules/stepable.rb"

class King < Piece
  include Stepable

  def symbol
    '♚'.colorize(color)
  end

  protected

  def move_diffs
    # return an array of diffs representing where a King can step to
  end
end