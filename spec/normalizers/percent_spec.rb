module Normalizers 
  RSpec.describe Percent do 
    subject { described_class.run(input) }

    context 'valid input' do
      let(:input) { File.read('spec/fixtures/people_by_percent.txt') } 

      let(:expected) do 
        [
          'Mckayla, Atlanta, 5/29/1986',
          'Elliot, New York City, 5/4/1947',
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
