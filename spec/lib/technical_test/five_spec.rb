describe TechnicalTest::Five do
  describe "#perform" do
    subject { TechnicalTest::Five.new.perform }

    it "has 11 results" do
      subject.count.should == 11
    end

    it "works" do
      subject.should include("1 + 2 + 34 - 5 + 67 - 8 + 9")
      subject.should include("123 - 45 - 67 + 89")
      subject.should include("12 - 3 - 4 + 5 - 6 + 7 + 89")
    end
  end
end
