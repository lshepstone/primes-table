describe PrimesTable::Generator do
  describe '#generate' do
    subject(:prime_numbers) { described_class.generate(size) }

    context 'with three for the size' do
      let(:size) { 3 }

      it 'returns the first three prime numbers' do
        expect(prime_numbers).to contain_exactly(2, 3, 5)
      end
    end

    context 'with five for the size' do
      let(:size) { 5 }

      it 'returns the first five prime numbers' do
        expect(prime_numbers).to contain_exactly(2, 3, 5, 7, 11)
      end
    end

    context 'with seven for the size' do
      let(:size) { 7 }

      it 'returns the first seven prime numbers' do
        expect(prime_numbers).to contain_exactly(2, 3, 5, 7, 11, 13, 17)
      end
    end
  end
end
