require './lib/node'
require './lib/tree'

RSpec.describe BinarySearchTree do
  before :each do
    @tree = BinarySearchTree.new
  end

  it "has attributes" do
    expect(@tree.nodes).to eq([])
  end

  it "can insert" do
    expect(@tree.insert(50, "Action Movie")).to eq(0)
    expect(@tree.insert(55, "Comedy")).to eq(1)
    expect(@tree.insert(45, "Tragedy")).to eq(1)
    expect(@tree.insert(47, "Action Tragedy")).to eq(2)
  end

  it "can include" do
    @tree.insert(50, "Action Movie")

    expect(@tree.include?(50)).to eq(true)
    expect(@tree.include?(100)).to eq(false)
  end
end
