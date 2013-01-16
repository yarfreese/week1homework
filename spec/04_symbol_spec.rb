describe "Symbols" do

  it "are not like strings, which can have duplicate content in multiple objects" do
    "only_one".object_id.should_not eq "only_one".object_id
  end

  it "only exist once" do
    ("only" + "one").to_sym.object_id.should eq :onlyone.object_id
  end

  it "are of class Symbol" do
    :my_symbol.should be_a Symbol
  end
  
  it "are not the same as a string of the same characters" do
    str = "my gossamer string"
    sym = str.to_sym
    # sym.should eq str
    sym.should_not eq str
  end
  
  it "are convertable to strings" do
    str = "my flexible string"
    sym = str.to_sym
    new_str = sym.to_s
    new_str.should eq str
  end

  it "are convertable from a string" do
    str = "my convertable string"
    sym = str.to_sym
    sym.should be_a Symbol
  end

  it "automatically converts to a string when interpolated" do
    str = "this is fun"
    sym = str.to_sym
    "#{sym}".should eq "this is fun"
    "#{:"this is fun"}".should eq "this is fun"
    # "#{:"this is fun"}".should_not eq "this is fun"
  end
  
end
