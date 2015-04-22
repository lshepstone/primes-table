require 'optparse'

module PrimesTable
  class Console
    def initialize
      @options = {}
      OptionParser.new do |opt|
        opt.on('--count INTEGER') { |value| @options[:size] = value }
      end.parse!
    end

    def print_primes_table
      puts "primes-table version #{PrimesTable::VERSION}\n\n"
      Printer.new(Table.new(@options[:size].to_i)).print_table
    end
  end
end
