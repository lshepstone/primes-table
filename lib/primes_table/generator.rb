module PrimesTable
  class Generator
    def self.generate(size)
      primes = []

      number = 2
      until primes.size == size
        primes << number unless (2...number).any? { |i| number % i == 0 }
        number += 1
      end

      primes
    end
  end
end
