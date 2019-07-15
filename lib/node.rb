class Node
  attr_reader :score, :movie_title, :next_node, :previous_node

  def initialize(score, movie_title)
    @score = score
    @movie_title = movie_title
    @next_node = nil
    @previous_node = nil
  end
end
