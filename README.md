# PrimesTable

Print a primes multiplication table of varying size from the command line!

## Feedback

Please see the commit messages for decisions made along the way.

### Running the command

Once the repo is cloned and you've installed the project's dependencies with `bundle`, you can run the command using

    bundle exec bin/primes-table --count=10

Then you should see

    primes-table version 0.0.0

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

### Running the specs

To run the specs, of course

    bundle exec rspec

Then you should see

    User executes the "primes-table" command
      when the size option is specified
        returns successfully
        prints the version number for the tool
        prints a prime factors table of the specified size

    PrimesTable::Generator
      #generate
        with three for the size
          returns the first three prime numbers
        with five for the size
          returns the first five prime numbers
        with seven for the size
          returns the first seven prime numbers

    PrimesTable
      has a version number

    PrimesTable::Table
      #prime_numbers
        generates and returns a set of prime numbers
      #value_for_cell
        returns the product of the respective prime numbers
