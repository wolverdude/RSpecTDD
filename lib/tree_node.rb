class TreeNode
  attr_accessor :value
  attr_reader :parent, :children, :value

  def initialize(value)
    @children = []
    @value = value
  end

  def add_child(child)
    @children << child
    child.parent = self
  end

  def remove_child(child)
    @children.delete(child)
    child.parent = nil
  end

  protected
  attr_writer :parent

end