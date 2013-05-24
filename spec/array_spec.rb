require 'rspec'
require 'array'

describe Array do
  # subject(:arr) { Array.new }
  describe "#my_uniq" do

    it "filters out duplicates" do
      [1, 2, 1, 3, 3].my_uniq.sort.should == [1, 2, 3]
    end

    it "doesn't change the order" do
      [3, 3, 1, 1, 2].my_uniq.should == [3, 1, 2]
    end

  end

  describe "#two_sum" do

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

  describe "#my_transpose" do

    it "transposes a single element matrix" do
      [[5]].my_transpose.should == [[5]]
    end

    it "transposes an empty matrix" do
      [[]].my_transpose.should == [[]]
    end

    it "transposes a square matrix" do
      rows = [
          [0, 1, 2],
          [3, 4, 5],
          [6, 7, 8]
        ]

      cols = [
          [0, 3, 6],
          [1, 4, 7],
          [2, 5, 8]
        ]

      rows.my_transpose.should == cols
    end

    it "transposes a rectangular matrix" do
      rows = [
          [0, 1, 2],
          [3, 4, 5]
        ]

      cols = [
          [0, 3],
          [1, 4],
          [2, 5]
        ]

      rows.my_transpose.should == cols
    end
  end

  describe "#stock_picker" do

    it "returns the indices of the days" do
      [45, 90].stock_picker.should == [0, 1]
    end

    it "returns nil if fewer than two days" do
      [50].stock_picker.should == nil
    end

    it "handles multiple days" do
      [50, 45, 47, 90, 83].should == [1, 3]
    end

    it "returns the least of many evils" do
      [50, 45, 41, 40, 33].should == [2, 3]
    end

    it "finds the closest two days if there are multiple possiblities" do
      [20, 25, 30, 40].should == [2, 3]
    end

  end

end