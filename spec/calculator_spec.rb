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
    end  
    it "should return sum for  multiline numbers separated by comma" do
    end
    it "should support custom delimiters" do
    end  
    it "should throw error for negative number" do
    end  
  end
end  