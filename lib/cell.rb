module Sudoku
  class Cell
  
    attr_reader   :row, :column, :value
    attr_accessor :guesses
 
    def initialize(row, column, val=nil)
      @value        = val if val
      @row, @column = row, column
      @guesses      = []
    end

    def present?
      !empty?
    end

    def empty?
      value.nil?
    end

    def value=(val)
      raise "VALUE ASSIGNED" unless empty?
      @guesses = []
      @value   = val
    end

  end
end