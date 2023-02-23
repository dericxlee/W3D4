# require_relative 'board.rb'
# require_relative 'pawn.rb'

class Piece 
    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
        # @board[pos]=(color)
    end

    # def move(end_pos)
    #     if self.moves.include?(end_pos)
    #         @board.move_piece(@color, @pos, end_pos)
    #     else
    #         raise "error"
    #     end
    # end
end
