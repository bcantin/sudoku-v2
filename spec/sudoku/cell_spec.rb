require File.dirname(__FILE__) + '/../spec_helper'

describe "Sudoku::Cell" do
  describe "cell w/o a value" do
    let(:cell) {Sudoku::Cell.new(1,2)}

    it "should have a row and a column" do
      cell.row.should    == 1
      cell.column.should == 2
    end
    
    it "the value should default to nil" do
      cell.value.should == nil
    end

    it "empty? returns true when the value is nil" do
      cell.empty?.should be_true
    end 

    it "present? returns false when the value is nil" do
      cell.present?.should be_false
    end

    it "lets us set a value if there is no previous value" do
      cell.value.should == nil
      cell.value = 3
      cell.value.should == 3
    end   
  end
    
  describe "cell with a value" do
    let(:cell) {Sudoku::Cell.new(1,2,3)}

    it "returns the initialized value" do
      cell.value.should == 3
    end

    it "empty? returns false when the value is not nil" do
      cell.empty?.should be_false
    end 

    it "present? returns true when the value is not nil" do
      cell.present?.should be_true
    end 

    it "throws an error if we try to set the value for a cell with a value" do
      expect { cell.value = 3 }.to raise_error
    end
  end
end