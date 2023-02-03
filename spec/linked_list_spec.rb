require '../lib/linked_list.rb'

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
end