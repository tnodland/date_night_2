require './lib/node'
require 'pry'

class BinarySearchTree
  attr_reader :nodes

  def initialize
    @nodes = []
  end

  def insert(score, title)
    node = Node.new(score, title)

    self.sort_node(node)

    @nodes << node

    return node.postion
  end

  def sort_node(new_node)
    next_highest_node = Node.new(101, "Fake Highest Node")
    next_lowest_node = Node.new(-1, "Fake Lowest Node")

    unless @nodes.empty?
      @nodes.each do |node|
        if node.score > new_node.score
          unless next_highest_node.score < node.score
            next_highest_node = node
          end
        elsif node.score < new_node.score
          unless next_lowest_node.score > node.score
            next_lowest_node = node
          end
        end
      end
    end

    unless next_highest_node.score == 101
      new_node.next_node = next_highest_node
      if next_highest_node.previous_node.nil?
        next_highest_node.previous_node = new_node
      end
    end

    unless next_lowest_node.score == -1
      new_node.previous_node = next_lowest_node
      if next_lowest_node.next_node.nil?
        next_lowest_node.next_node = new_node
      end
    end
  end

  def include?(score)
    @nodes.all? { |node| node.score == score }
  end

  def depth_of(score)
    @nodes.each do |node|
      if node.score == score
        return node.postion
      end
    end
  end
end
