require '../lib/linked_list.rb'
require '../lib/node'


RSpec.describe LinkedList do
  describe "#instance" do

    it 'is an instance of LinkedList' do
      list = LinkedList.new

      expect(list).to be_instance_of(LinkedList)
    end
  end

  describe "#head" do

    it 'has head' do
      list = LinkedList.new

      expect(list.head).to be_nil
    end
  end

  describe "#append" do

    it 'adds data to head' do
      list = LinkedList.new
      list.append("doop")
      # require 'pry'; binding.pry

      expect(list.head.data).to eq("doop")#important to note not expecting .append, expecting that the command of append is reaching into the list into the node(head) and grabbing the data
      
    end
  end

  describe "#next_node" do
    it "checks the value of the next node" do

    list = LinkedList.new
    list.append("doop")
    # list.head.next_node
# require 'pry'; binding.pry
    expect(list.head.next_node).to eq(nil)
    end
  end

  describe "#count" do
    it "counts the items in the list" do
      list = LinkedList.new
      list.append("doop")
      list.count
# require 'pry'; binding.pry
      expect(list.count).to eq(1)
    end
    
  end

  describe "#string" do
    it "calls a string" do
      list = LinkedList.new
      list.append("doop")
      # list.to_string
# require 'pry'; binding.pry
      expect(list.head.data).to eq("doop") #this is such an important step to reach thru at it were into the list into the node and grab the data
    end

  end

end