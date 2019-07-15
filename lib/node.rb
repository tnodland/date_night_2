class Node
  attr_accessor :score, :movie_title, :next_node, :previous_node

  def initialize(score, movie_title)
    @score = score
    @movie_title = movie_title
    @next_node = nil
    @previous_node = nil
  end

  def postion
    if @next_node.nil? && @previous_node.nil?
      return 0
    elsif @next_node.nil? || @previous_node.nil?
      return 1
    else
      return 2
    end
  end
end
