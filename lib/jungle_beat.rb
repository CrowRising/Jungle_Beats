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

  def count
    list.count
  end

  def play
    `say -r 130 -v Boing #{list.to_string}`
  end

end