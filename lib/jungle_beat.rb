class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
    
  end

  def list
    @list
  end

  def append(new_data)

    new_data = new_data.split
    string = []
    new_data.each do |data|
      string << list.append(data)
      string.join(" ")
    end
    string.join(" ")

  end
end