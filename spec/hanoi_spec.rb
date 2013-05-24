require 'rspec'
require 'hanoi'

describe Hanoi do
  subject(:game) { Hanoi.new }

  its(:towers) { should be_an Array }
  its(:towers) { should == [[3, 2, 1], [], []] }

  describe '#render' do

    it "prints the board to stdout" do
      game.render.should eq "1 | |\n2 | |\n3 | |"
    end


  end

  describe '#move' do

    it "moves a ring" do
      game.move(0, 2)
      game.render
    end

  end



  describe '#won?'



end