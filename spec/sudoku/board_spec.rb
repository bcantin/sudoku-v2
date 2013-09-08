require File.dirname(__FILE__) + '/../spec_helper'

describe "Sudoku::Board" do
  it "initializes with 81 cells" do
    board = Sudoku::Board.new
    board.cells.size.should == 81
  end
end
