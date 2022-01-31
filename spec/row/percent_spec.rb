module Row
  RSpec.describe Percent do 
    subject     { described_class.new(input) }
    let(:input) { ["Mckayla ", " Atlanta ", " 1986-05-29"] }

    describe '#to_s' do 
      it 'returns expected format' do
        expect(subject.to_s).to eq('Mckayla, Atlanta, 5/29/1986')
      end
    end

    describe '#last_name' do 
      it { expect(subject.last_name).to eq('Mckayla') }
    end

    describe '#city' do 
      it { expect(subject.city).to eq('Atlanta') }
    end

    describe '#birth_date' do 
      it { expect(subject.birth_date).to eq('5/29/1986') }
    end
  end
end