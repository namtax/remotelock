module Normalizers 
  RSpec.describe Dollar do 
    describe '.run' do
      subject { described_class.run(input) }

      context 'valid input' do
        let(:input) { File.read('spec/fixtures/people_by_dollar.txt') } 
        let(:expected) do 
          [
            'Rhiannon, Los Angeles, 4/30/1974',
            'Rigoberto, New York City, 1/5/1962'
          ]
        end

        it 'converts to expected format' do 
          expect(subject).to eq(expected)
        end
      end

      context 'input empty' do
        let(:input) {  }

        it 'returns nil' do 
          expect(subject).to be_nil
        end
      end
    end 
  end
end
