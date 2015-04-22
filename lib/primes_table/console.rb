module PrimesTable
  class Console
    def initialize(arguments)
      @arguments = arguments
    end

    def print_primes_table
      puts "primes-table version #{PrimesTable::VERSION}\n\n"
      Printer.new(Table.new(10)).print_table
    end
  end
end
