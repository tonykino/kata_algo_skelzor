describe TechnicalTest::Two do
  describe "#combine_arrays" do
    subject { TechnicalTest::Two.new.combine_arrays(a1, a2) }

    describe 'basic example' do
      let(:a1) { ['a', 'b', 'c'] }
      let(:a2) { [1, 2, 3] }

      it "works" do
        expect(subject).to eq(['a', 1, 'b', 2, 'c', 3])
      end
    end
    
    describe 'uneven example' do
      let(:a1) { ['a', 'b', 'c', 'd'] }
      let(:a2) { [1, 2] }

      it "works" do
        expect(subject).to eq(['a', 1, 'b', 2, 'c', 'd'])
      end
    end
  end
end
