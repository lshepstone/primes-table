module PrimesTable
  class Table
    attr_reader :size

    def initialize(size)
      @size = size
    end

    def prime_numbers
      @prime_numbers ||= Generator.generate(size)
    end

    def value_for_cell(row, column)
      prime_numbers[row] * prime_numbers[column]
    end
  end
end
