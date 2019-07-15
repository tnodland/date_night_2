require './lib/node'
require './lib/tree'

RSpec.describe BinarySearchTree do
  it "can insert" do
    tree = BinarySearchTree.new

    expect(tree.insert(50, "Action Movie")).to eq(1)
  end
end
