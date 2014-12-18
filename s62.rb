=begin
*) Collect the internal nodes of a binary tree in a list.
    An internal node of a binary tree has either one or two non-empty successors. Write a method internalList to collect them in a list.

    scala> Node('a', Node('b'), Node('c', Node('d'), Node('e'))).internalList
    res0: List[Char] = List(a, c)

P62B (*) Collect the nodes at a given level in a list.
    A node of a binary tree is at level N if the path from the root to the node has length N-1. The root node is at level 1. Write a method atLevel to collect all nodes at a given level in a list.

    scala> Node('a', Node('b'), Node('c', Node('d'), Node('e'))).atLevel(2)
    res0: List[Char] = List(b, c)

    Using atLevel it is easy to construct a method levelOrder which creates the level-order sequence of the nodes. However, there are more efficient ways to do that.
=end
class BinaryTree

  def self.[](*values)
    BinaryTree.new(Node.new(1, *values))
  end

  def initialize(root)
    @root = root
  end

  class Node
    attr_accessor :left, :right, :value, :level

    def initialize(level, value, left = nil, right = nil)
      @level = level
      @value = value
      @left = left.nil? ? nil : Node.new(level+1, *left)
      @right = right.nil? ? nil : Node.new(level+1, *right)
    end

    def leaf?
      @left.nil? and @right.nil?
    end

    def nodes
      nodes = [self]
      nodes << self.left.nodes unless self.left.nil?
      nodes << self.right.nodes unless self.right.nil?

      nodes.flatten
    end
  end

  def leaves
    nodes.select(&:leaf?)
  end

  def leaf_count
    leaves.length
  end

  def internals
    nodes.reject(&:leaf?)
  end

  def at_level(level)
    nodes.select {|node| node.level == level}
  end

  def nodes
    @root.nodes
  end
end

tree = BinaryTree[1, [2,[3],[4,[5],[6]]], [7,[8,[9],[10,[11]]]]]

p tree.internals.map(&:value)
p tree.at_level(3).map(&:value)
