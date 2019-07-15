class Node
  attr_reader :position, :movie_title, :next_node, :previous_node

  def initialize(position, movie_title)
    @position = position
    @movie_title = movie_title
    @next_node = nil
    @previous_node = nil
  end
end
