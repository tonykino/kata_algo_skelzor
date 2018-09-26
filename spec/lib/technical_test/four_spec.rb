describe TechnicalTest::Four do
  describe "#largest_number_from_array(array)" do
    subject { TechnicalTest::Four.new.largest_number_from_array(array) }

    describe "example 1" do
      let(:array) { [50, 2, 1, 9] }

      it { should == '95021' }
    end
    
    describe "example 2" do
      let(:array) {[95, 9, 89]}
      
      it { should == '99589'}
    end
    
    describe "example 3" do
      let(:array) {[50, 5, 6, 0, 56]}
      
      it { should == '6565500'}
    end
  end
end
