shared_examples "a sum function" do
  let(:array) { [50, 3456, 8, 975] }

  it "works" do
    expect(subject).to eq(50+3456+8+975)
  end
end

describe TechnicalTest::One do
  describe "for loop" do
    subject { TechnicalTest::One.new.sum_with_for_loop(array) }

    it_should_behave_like "a sum function"
  end

  describe "while loop" do
    subject { TechnicalTest::One.new.sum_with_while_loop(array) }

    it_should_behave_like "a sum function"
  end

  describe "recursion" do
    subject { TechnicalTest::One.new.sum_with_recursion(array) }

    it_should_behave_like "a sum function"
  end
end
