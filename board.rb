require_relative 'piece.rb'
require_relative 'pawn.rb'
require_relative 'bishop.rb'
require_relative 'rook.rb'
require_relative 'queen.rb'
require_relative 'king.rb'
require_relative 'knight.rb'
require_relative 'nullpiece.rb'


class Board
    attr_reader :rows, :null_piece

    PIECES = 
    [Rook.new(:B, self, [0,0]),
    Rook.new(:B, self, [0,7]),
    Rook.new(:W, self, [7,0]),
    Rook.new(:W, self, [7,7]),
    ]

    def initialize
        @rows = Array.new(8) {Array.new(8)}
        @null_piece = NullPiece.new
        # @rows.map.with_index do |row, idx|
        #     row.map do |ele|
        #         if idx > 1 && idx < 6
        #             ele = NullPiece.new
        #         end
        #     end
        # end
        PIECES.each do |piece|
            add_piece(piece, piece.pos)
            # puts piece.pos
        end

    end

    def fill_board
        @rows.each_with_index do |row, i|
            (0..7).each do |j|
                if i == 1
                    rows[i][j] = Pawn.new(:B, self, [i, j])
                elsif i == 6
                    rows[i][]
                # elsif i >= 6
                    # rows[i][j] = Piece.new(:W, self, [i, j])
                # else
                #     ele = NullPiece.new
                end
            end
        end
    end

    def add_pawns
        (0..7).each do |i|
            rows[1][i] = Pawn.new(:B, self, [1, i])
            rows[6][i] = Pawn.new(:W, self, [6, i])
        end
    end

    def add_null
        (2..5).each do |i|
            (0..7).each do |j|
                rows[i][j] = NullPiece.new
            end
        end
    end

    # def add_pieces
    #     self[0, 0] = Rook.new(:B, self, [0, 0])
    #     rows[0][]

    # end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end

    # def empty?
    #     self
    # end

    # def add_piece(rook1, rook1.pos)
    #     self[position] = piece
    # end

    def add_piece(piece, position)
        # self[position].empty?
        # self[position] = Piece.new(color, self, self[position])
        self[position] = piece
    end

    def move_piece(color, start_pos, end_pos) #=> move_piece(:B, [0,0], [8,0])
        if self[start_pos].color == color && self[start_pos].moves.include?(end_pos)
            self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
        elsif self[start_pos] != color
            raise "no piece here"
        else
            raise "invalid move"
        end
    end

    def valid_pos?(pos)
        row, col = pos
        if row >= 0 && row <= 7 && col >= 0 && col <= 7 
            return true
        # else
        #     raise "invalid position"
        end
        return false
    end
end

