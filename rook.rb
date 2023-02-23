require_relative 'piece.rb'
# require_relative 'board.rb'
require_relative 'slideable.rb'

class Rook < Piece
    include Slideable

    def initialize(color, board, pos)
        super
        @pos = [[0,0], [0, 7], [7, 0], [7, 7]]
    end

    def move_dirs
        self.horizontal_dirs
    end
end

# b = Board.new
# p b
# k = Rook.new(:B, b, [0, 0])
# b.add_piece(k, k.pos)
# # q = Rook.new(:B, b, [6, 0])
# # rook3 = Rook.new(:B, b, [0, 6])
# # q = Rook.new(:W, b, [1,0])
# p b
# # p b[[0, 0]]
# b.move_piece(:B, [0,0], [6, 0])
# p b
# # p b[[0, 0]]
# # p b[[1, 0]]
# # p b[[2,0]]
# # p k.move([0, 6])
# # p b