class LinkedList
  attr_reader :head, :count
  
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else 
    # require 'pry'; binding.pry
      current_node = @head
     
      while(!current_node.next_node.nil?)
        current_node = current_node.next_node
    end
    #   #We are at the end of the list
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
    # require 'pry'; binding.pry
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
        require 'pry'; binding.pry
        current_node = @head
        (index - 1).times do 
          current_node = current_node.next_node
        end
        node.next_node = current_node.next_node
        current_node.next_node = node
      end
    end
end