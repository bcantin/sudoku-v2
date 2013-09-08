module Sudoku
  class Board

    attr_accessor :cells
  
    VALUES = (1..9).to_a

    def initialize
      @cells = []
      generate_board_cells
    end

    def generate_board_cells
      VALUES.each do |row|
        VALUES.each do |col|
          @cells << Sudoku::Cell.new(row, col)
        end
      end
    end

  end
end