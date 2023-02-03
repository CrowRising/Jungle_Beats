require './lib/node'

RSpec.describe Node do
  describe "#instance" do
    it 'is an instance of Node' do
    
    node = Node.new("plop")
    
    expect(node).to be_instance_of(Node)
    end
  end

  describe "#data" do
    it 'can return data' do

    node = Node.new("plop")
     
    expect(node.data).to eq("plop")
    end
  end
end
  
