
describe "Strings" do
  
  context "created with double quotes" do
    
    it "are valid" do
      "Ruby Course".should eq 'Ruby Course'
    end
    
    it "are of class String" do
      "Ruby Course".should be_a String
    end
    
    it "can contain bare single-quote (') characters" do
      "Ruby Course 'rocks'".should be_a String
      "Ruby Course - it's a blast".should be_a String
    end
    
    it "allow the escape of double quote (\") characters" do
      "Ruby Course \" allows escaping \"".should be_a String
      "Ruby Course \" allows escaping \"".should eq 'Ruby Course " allows escaping "'
    end
    
    it "allow interpolation (Ruby code within the string)" do
      "The square root of 4 is equal to #{Math.sqrt(4)}".should be_a String
      "The square root of 4 is equal to #{Math.sqrt(4)}".should eq "The square root of 4 is equal to 2.0"
    end
    
    it "replace \t with a tab character" do
      "\tThis is a test".should eq  "	This is a test"
    end

    it "ADD AN EXAMPLE THAT TESTS A DIFFERENT ESCAPE SEQUENCE" do
      "Arf\sArf".should eq "Arf Arf" 
    end

    it "replaceS special characters when values are specified at the end via '% [value]'" do
      %[012].should eq '012'
    end
    
  end
  
  context "created with single quotes" do
    
    it "are valid" do
      'Alfred E. Newman'.should eq "Alfred E. Newman"
    end
    
    it "are of class String" do
      'stuff'.should be_a String
    end
    
    it "allow double-quote (\") characters" do
      '"double quoted"'.should eq '"double quoted"'
    end

    it "allow the escape of single quote (') characters" do
      'happy it\'s friday'.should be_a String
      'happy it\'s friday'.should eq "happy it's friday"
    end
    
    it "does not interpolate Ruby code" do
      'The square root of 4 is equal to #{Math.sqrt(4)}'.should be_a String
      'The square root of 4 is equal to #{Math.sqrt(4)}'.should_not eq "The square root of 4 is equal to 2.0" 
      'The square root of 4 is equal to #{Math.sqrt(4)}'.should eq "The square root of 4 is equal to \#{Math.sqrt(4)}" 
    end
    
    it "does not escape newline characters" do
      '\nnot new line'.should eq "\\nnot new line"
    end
    
  end

  context "created with Q sequence" do

    it "supports arbitrary delimiters and behave like a double quoted string" do
      %Q@<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>@.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "can omit the Q and just use %{}" do
      %{<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>}.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "created with the pattern %q supports arbitrary delimiters and behave like a single quoted string" do
      %q@\nnot new line@.should eq "\\nnot new line"
    end

  end

end
