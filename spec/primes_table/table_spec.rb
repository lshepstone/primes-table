describe PrimesTable::Table do
  subject(:table) { described_class.new(3) }

  let(:prime_numbers) { [2, 3, 5] }

  before do
    allow(PrimesTable::Generator).to receive(:generate).with(3).and_return(prime_numbers)
  end

  describe '#prime_numbers' do
    it 'generates and returns a set of prime numbers' do
      expect(table.prime_numbers).to eql(prime_numbers)
    end
  end

  describe '#value_for_cell' do
    it 'returns the product of the respective prime numbers' do
      expect(table.value_for_cell(1, 2)).to eql(prime_numbers[1] * prime_numbers[2])
    end
  end
end
