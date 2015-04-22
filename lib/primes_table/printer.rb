module PrimesTable
  class Printer
    attr_reader :table

    def initialize(table)
      @table = table
    end

    def print_table
      puts render_rows.join("\n")
    end

    private

    def render_rows
      [].tap do |rows|
        rows << render_header_row
        rows << render_divider_row
        rows << render_value_rows
      end
    end

    def render_header_row
      ''.tap do |result|
        result << ' ' * (size_of_gutter + 1) << '|'
        table.prime_numbers.each.with_index do |number, index|
          result << " %#{size_of_column(index)}s" % number
        end
      end
    end

    def render_divider_row
      ''.tap do |result|
        result << '-' * (size_of_gutter + 1) << '|'
        table.size.times do |column|
          result << '-' * (size_of_column(column) + 1)
        end
      end
    end

    def render_value_rows
      table.prime_numbers.map.with_index do |number, row|
        ''.tap do |result|
          result << "%#{size_of_gutter}s |" % number
          table.size.times do |column|
            result << " %#{size_of_column(column)}s" % table.value_for_cell(row, column)
          end
        end
      end
    end

    def size_of_column(index)
      table.value_for_cell(table.size - 1, index).to_s.length
    end

    def size_of_gutter
      table.prime_numbers.last.to_s.length
    end
  end
end
