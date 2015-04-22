module PrimesTable
  class Generator
    def self.generate(size)
      [2].tap do |primes|
        number = 3
        until primes.size == size
          primes << number unless (2...number).any? { |i| number % i == 0 }
          number += 1
        end
      end
    end
  end
end
