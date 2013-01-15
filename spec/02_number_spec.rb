describe "Integers" do

  it "have methods (just like all objects)" do
    1.should respond_to :+
  end

  it "can use underscores, to be easy on the eyes" do
    1_000_000.should eq 1000000
  end

  it "can be added" do
    (1 + 2).should eq 3
  end

  it "can be subtracted" do
    (3_456_123 - 1).should eq 3456122
  end

  it "can be multiplied" do
    (4 * 35).should eq 140
  end

  it "support exponentiation" do
    (5**2).should eq 25
  end

  it "support modulo" do
    (25%6).should eq 1
  end

  it "are usually of class Fixnum" do
    123456789.should be_a Fixnum
  end

  it "that are are very large are of class Bignum" do
    1234567890.should be_a Bignum
  end

  it "are returned from Integers calculations" do
    (25/17).should be_a Integer    
  end

end

describe "Floats" do

  it "have their own class" do
    (1.0).should be_a Float
  end

  it "are returned when calculations include a Float" do
    (25.0/17.0).should be_a Float
  end

end

describe "Other Ruby classes" do

  it "ADD ANY EXAMPLE THAT TESTS A Rational, Complex OR BigDecimal value" do
    (0.4 - 0.3).should_not eq 0.1
    require "bigdecimal"
    four_tenths = BigDecimal("0.4")
    three_tenths = BigDecimal("0.3")
    (four_tenths - three_tenths).should eq 0.1
  end

end
