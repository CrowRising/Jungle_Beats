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
      # list.append("deep") # I am trying to see if I can combine these commands into one test
      #It did NOT work
      
      expect(list.head.data).to eq("doop") #important to note not expecting .append, expecting that the command of append is reaching into the list into the node(head) and grabbing the data
    end
  end

  describe "#next_node" do
    it "checks the value of the next node" do

    list = LinkedList.new
    list.append("doop")
   
    expect(list.head.next_node).to eq(nil)
    end
  end

  describe "second append" do
    it "adds data to next node" do
      list = LinkedList.new
      list.append("deep")

      expect(list.head.data).to eq("deep")
    end
  end

  describe "next append" do
    it "adds data to next node" do
      list = LinkedList.new
      list.append("plop")

      expect(list.head.data).to eq("plop")
    end
  end

  describe "next append" do
    it "adds data to next node" do
      list = LinkedList.new
      list.append("suu")

      expect(list.head.data).to eq("suu")
    end
  end

  describe "#next_node" do
    it "checks the value of the next node" do

    list = LinkedList.new
    list.append("deep")
   
    expect(list.head.next_node).to eq(nil)
    end
  end

  describe "#count" do
    it "counts the items in the list" do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")
      list.count
      
      expect(list.count).to eq(2)
    end
    
  end

  describe "#string" do
    it "calls a string" do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")
      list.to_string
# require 'pry'; binding.pry
      expect(list.to_string).to eq("doop deep") #this is such an important step to reach thru at it were into the list into the node and grab the data
    end

  end

  describe "#prepend" do
    it "adds node to beginning of list" do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")

      expect(list.head.data).to eq("dop")
    end
  end

  it "counts new list" do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      list.count
# require 'pry'; binding.pry
      expect(list.count).to eq(3)
  end 

  describe "#insert" do
    it "inserts node into list by an index" do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      list.insert(1, "woo")

      expect(list.head.next_node.data).to eq("woo")
      expect(list.to_string).to eq("dop woo plop suu")
    end
  end

  it " calls the string" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.to_string).to eq("deep woo shi shu blop")
  end

   describe "#additional methods" do
    it "finds index point and returns a specific number of elements" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")
      # list.find(2, 1)

      expect(list.find(2, 1)).to eq("shi")

    end
  end

  it "checks to see if specific data is included" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.includes?("deep")).to be(true)
    expect(list.includes?("shi")).to be(true)
    expect(list.includes?("dep")).to be(false)
  end

 it "removes last element from list" do
  list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.pop).to eq("blop")
 end

end