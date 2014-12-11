=begin
P61 (*) Count the leaves of a binary tree.
    A leaf is a node with no successors. Write a method leafCount to count them.

    scala> Node('x', Node('x'), End).leafCount
    res0: Int = 1

61A (*) Collect the leaves of a binary tree in a list.
    A leaf is a node with no successors. Write a method leafList to collect them in a list.

    scala> Node('a', Node('b'), Node('c', Node('d'), Node('e'))).leafList
    res0: List[Char] = List(b, d, e)
=end
class BinaryTree

  def self.[](*values)
    BinaryTree.new(Node.new(*values))
  end

  def initialize(root)
    @root = root
  end

  class Node
    attr_accessor :left, :right, :value

    def initialize(value, left = nil, right = nil)
      @value = value
      @left = left.nil? ? nil : Node.new(*left)
      @right = right.nil? ? nil : Node.new(*right)
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

  def nodes
    @root.nodes
  end

end

tree = BinaryTree[1, [2,[3],[4,[5],[6]]], [7,[8,[9],[10,[11]]]]]

p tree.leaf_count            # 5
p tree.leaves.map(&:value)   # [3, 5, 6, 9, 11]
