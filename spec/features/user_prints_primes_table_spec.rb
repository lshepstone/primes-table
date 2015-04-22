describe 'User executes the "primes-table" command' do
  context 'when the size option is specified' do
    before { run_simple 'primes-table --count=10' }

    it 'returns successfully' do
      expect(last_exit_status).to eql(0)
    end

    it 'prints the version number for the tool' do
      expect(all_output).to include(PrimesTable::VERSION)
    end

    it 'prints a prime factors table of the specified size' do
      expect(all_output).to include <<-END
   |  2  3   5   7  11  13  17  19  23  29
---|--------------------------------------
 2 |  4  6  10  14  22  26  34  38  46  58
 3 |  6  9  15  21  33  39  51  57  69  87
 5 | 10 15  25  35  55  65  85  95 115 145
 7 | 14 21  35  49  77  91 119 133 161 203
11 | 22 33  55  77 121 143 187 209 253 319
13 | 26 39  65  91 143 169 221 247 299 377
17 | 34 51  85 119 187 221 289 323 391 493
19 | 38 57  95 133 209 247 323 361 437 551
23 | 46 69 115 161 253 299 391 437 529 667
29 | 58 87 145 203 319 377 493 551 667 841
      END
    end
  end
end
