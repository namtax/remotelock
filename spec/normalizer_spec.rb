RSpec.describe Normalizer do 
  describe '.run' do 
    context 'dollar format' do 
      subject        { described_class.run(input) }
      let(:input)    { { dollar_format: File.read('spec/fixtures/people_by_dollar.txt') } }
      let(:expected) { "city $ birthdate $ last_name $ first_name\nLA $ 30-4-1974 $ Nolan $ Rhiannon\nNYC $ 5-1-1962 $ Bruen $ Rigoberto\n" }

      it 'calls expected normalizer' do 
        expect(Normalizers::Dollar).to receive(:run).with(expected)
        subject
      end
    end

    context 'percent format' do 
      subject        { described_class.run(input) }
      let(:input)    { { percent_format: File.read('spec/fixtures/people_by_percent.txt') } }
      let(:expected) { "first_name % city % birthdate\nMckayla % Atlanta % 1986-05-29\nElliot % New York City % 1947-05-04\n" }

      it 'calls expected normalizer' do 
        expect(Normalizers::Percent).to receive(:run).with(expected)
        subject
      end
    end
  end
end