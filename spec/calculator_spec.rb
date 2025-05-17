require_relative '../calculator'
RSpec.describe StringCalculator do
  describe "#add" do
    before do
      @cal = StringCalculator.new
    end  
    it "should return 0 for empty string" do
      expect(@cal.add("")).to eq(0)
    end
    it "should return same number for single number"  do
      expect(@cal.add("1")).to eq(1)
    end
    it "should return sum for comma separated numbers" do
      expect(@cal.add("1,2,3")).to eq(6)
    end  
    it "should return sum for  multiline numbers separated by comma" do
      expect(@cal.add("1\n2,3")).to eq(6)
      expect(@cal.add("1\n2")).to eq(3)
    end
    it "should support custom delimiters" do
      expect(@cal.add("//;\n1;2")).to eq(3)
      expect(@cal.add("//;\n1;2\n3")).to eq(6)
    end  
    it "should throw error for negative number" do
      expect{@cal.add("-1,-2")}.to raise_error("negative numbers not allowed -1,-2")
      expect{@cal.add("-1,2")}.to raise_error("negative numbers not allowed -1")
    end  
  end
end  