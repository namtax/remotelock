RSpec.describe Sort do 
  subject { described_class.run(input, order) }

  context 'sort param supplied' do
    let(:order) { :first_name }
    let(:input) do 
      [
        'Rigoberto, New York City, 1/5/1962',
        'Rhiannon, Los Angeles, 4/30/1974',
      ]
    end

    let(:expected) do 
      [
        'Rhiannon, Los Angeles, 4/30/1974',
        'Rigoberto, New York City, 1/5/1962',
      ]
    end

    it 'sorts by first name' do 
      expect(subject).to eq(expected)
    end
  end

  context 'sort param not supplied' do
    let(:order)    { nil }
    let(:expected) { input }
    let(:input) do 
      [
        'Rigoberto, New York City, 1/5/1962',
        'Rhiannon, Los Angeles, 4/30/1974',
      ]
    end

    it 'does not sort' do 
      expect(subject).to eq(expected)
    end
  end
end
