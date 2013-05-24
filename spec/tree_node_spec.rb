require 'rspec'
require 'tree_node'

describe TreeNode do

  subject(:node) { TreeNode.new("node") }
  let(:child1) { TreeNode.new("child1") }
  let(:child2) { TreeNode.new("child2") }

  its(:parent) { should be_nil }

  describe(:value) do
    it "initializes to the given value" do
      TreeNode.new("donuts").value.should eq "donuts"
    end

    it "can be reassigned" do
      node.value = "trefoil"
      node.value.should eq "trefoil"
    end

  end

  describe "#add_child" do
    before(:each) { node.add_child(child1) }

    it "adds a child node" do
      node.children.should include(child1)
    end

    it "should assign itself as the child node's parent" do
      child1.parent.should equal node
    end

    it "should add multiple children" do
      node.add_child(child2)
      node.children.should include(child2)
    end

  end

  describe "#remove_child" do
    before(:each) { node.add_child(child1) }

    it "removes a child node" do
      node.remove_child(child1)
      node.children.should_not include(child1)
    end

    it "assigns nil as child node's parent" do
      node.remove_child(child1)
      child1.parent.should be_nil
    end

  end

end

