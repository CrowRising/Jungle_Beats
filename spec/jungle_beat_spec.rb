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
end