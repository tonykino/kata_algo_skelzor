describe TechnicalTest::Three do
  describe "#fibo" do
    subject { TechnicalTest::Three.new.fibo(count) }

    describe 'fib(0)' do
      let(:count) { 0 }

      it "equals 0" do
        expect(subject).to eq(0)
      end
    end

    describe 'fib(1)' do
      let(:count) { 1 }

      it "equals 1" do
        expect(subject).to eq(1)
      end
    end

    describe 'fib(9)' do
      let(:count) { 9 }

      it "equals 34" do
        expect(subject).to eq(34)
      end
    end

    describe 'fib(100)' do
      let(:count) { 100 }

      it "equals 354224848179261915075" do
        expect(subject).to eq(354224848179261915075)
      end
    end
  end
end
