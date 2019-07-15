require 'pry'
require 'minitest/autorun'
require './lib/node'

class NodeTest < Minitest::Test
  def test_it_exists
    node = Node.new(12, "Movie")

    assert_instance_of Node, node
  end

  def test_it_has_attributes
    node = Node.new(12, "Movie")

    assert_equal "Movie", node.movie_title
    assert_equal 12, node.position
    assert_nil node.next_node
    assert_nil node.previous_node
  end
end
