module Row
  RSpec.describe Dollar do 
    subject     { described_class.new(input) }
    let(:input) { ["LA ", " 30-4-1974 ", " Nolan ", " Rhiannon"] }

    describe '#to_s' do 
      it 'returns expected format' do
        expect(subject.to_s).to eq('Rhiannon, Los Angeles, 4/30/1974')
      end
    end

    describe '#last_name' do 
      it { expect(subject.last_name).to eq('Rhiannon') }
    end

    describe '#city' do 
      it { expect(subject.city).to eq('Los Angeles') }
    end

    describe '#birth_date' do 
      it { expect(subject.birth_date).to eq('4/30/1974') }
    end
  end
end