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

  it "can find depth of" do
    @tree.insert(50, "Action Movie")
    @tree.insert(55, "Comedy")
    @tree.insert(45, "Tragedy")

    expect(@tree.depth_of(50)).to eq(2)
    expect(@tree.depth_of(45)).to eq(1)
    expect(@tree.depth_of(55)).to eq(1)
  end

  it "can find max" do
    @tree.insert(50, "Action Movie")
    @tree.insert(55, "Comedy")
    @tree.insert(45, "Tragedy")

    expect(@tree.max).to eq({"Comedy"=>55})
  end

  it "can find min" do
    @tree.insert(50, "Action Movie")
    @tree.insert(55, "Comedy")
    @tree.insert(45, "Tragedy")

    expect(@tree.min).to eq({"Tragedy"=>45})
  end

  it "can sort" do
    @tree.insert(45, "Tragedy")
    @tree.insert(50, "Action Movie")
    @tree.insert(55, "Comedy")

    expect(@tree.sort).to eq([{"Tragedy"=>45}, {"Action Movie"=>50}, {"Comedy"=>55}])
  end

  it "can load" do
    expect(@tree.load('movies.txt')).to eq(99)
    expect(@tree.max).to eq({"The Little Engine That Could"=>100})
  end
end
