require 'rspec'
require 'array'

describe Array do
  # subject(:arr) { Array.new }
  describe "my_uniq" do

    it "filters out duplicates" do
      [1, 2, 1, 3, 3].my_uniq.sort.should == [1, 2, 3]
    end

    it "doesn't change the order" do
      [3, 3, 1, 1, 2].my_uniq.should == [3, 1, 2]
    end

  end

  describe "two_sum" do

    it "returns an empty array if no sums are found" do
      [-3, -2, 1, 5].two_sum.should == []
    end

    it "returns indices of numbers that sum to zero" do
      [-5, -2, 1, 5].two_sum.map(&:sort).uniq.should == [[0, 3]]
    end

    it "onlys return the first occurrance of each pair" do
      [-5, -2, 1, 5].two_sum.should == [[0, 3]]
    end

    it "returns more than one pair" do
      [-5, -1, -3, 1, 5].two_sum.should == [[0, 4], [1, 3]]
    end

    it "is not fooled by zero" do
      [-3, -2, 0, 1, 5].two_sum.should == []
    end

  end

end