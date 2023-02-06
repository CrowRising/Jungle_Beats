require "../lib/jungle_beat"
require "../lib/linked_list"
require "../lib/node"

RSpec.describe JungleBeat do
  describe "#instance" do

    it 'is an instance of JungleBeat' do
      jb = JungleBeat.new

      expect(jb).to be_instance_of(JungleBeat)
    end
  end

  it 'gets instane of LinkedList' do
    jb = JungleBeat.new

    expect(jb.list).to be_instance_of(LinkedList)
  end

  it 'looks for value of head' do
    jb = JungleBeat.new

    expect(jb.list.head).to eq(nil)
  end

  it "adds sounds to list with append && retrieves data" do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
 
   expect(jb.list.to_string).to eq("deep doo ditt")
   expect(jb.list.head.data).to eq("deep")
   expect(jb.list.head.next_node.data).to eq("doo")
  end

  it "adds more sounds" do
    jb = JungleBeat.new
    jb.append("woo hoo shu")

    expect(jb.list.to_string).to eq("woo hoo shu")
  end

  it "adds multiple arrays of sounds and counts" do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")

    expect(jb.list.count).to eq(6)
    expect(jb.count).to eq(6)
  end

  it "plays the sounds" do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")

    
    expect(jb.play)

  end
    
    
end