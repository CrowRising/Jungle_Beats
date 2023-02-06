class LinkedList
  attr_reader :head, :count
  
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else 
      current_node = @head
     
      while(!current_node.next_node.nil?)
        current_node = current_node.next_node
    end
    
      current_node.next_node = Node.new(data)
    end
  end

  def count
    count = 1
    if @head.nil?
      count = 0
    else
      current_node = @head

      while(!current_node.next_node.nil?)
        count += 1
        current_node = current_node.next_node
    end
    count
    end
    
  end

  def to_string
    to_string = []
    if @head.nil?
      to_string = []
    else 
      current_node = @head

      while(!current_node.nil?)
        to_string << current_node.data
        current_node = current_node.next_node
    end
    to_string.join(" ")
    end
  end

  def prepend(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_head = Node.new(data)
      current_head.next_node = @head
      @head = current_head

    end
  end

  def insert(index, data)
    node = Node.new(data)
    if @head.nil?
      @head = node
    else
      current_node = @head
      (index - 1).times do 
        current_node = current_node.next_node
    end
      node.next_node = current_node.next_node
      current_node.next_node = node
    end
  end

  def find(index, amount)
    current_node = @head
    string = []
    (index).times do
      current_node = current_node.next_node
    end
    (amount).times do
      string << current_node.data
      current_node.next_node
    end
    string.join(" ")
  end

  def includes?(data)
    current_node = @head
    
    until current_node.data == data || current_node.next_node == nil
      current_node = current_node.next_node
      if current_node.data != data
        false
      end
    end
    current_node.data == (data)
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node.nil?
      current_node = current_node.next_node
    end
    last_node = current_node.next_node
    current_node.next_node.nil?
    last_node.data

  end
  
end