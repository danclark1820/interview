class LinkedList
  def initialize
    @head = nil
  end

  def each
    node = @head

    while !node.nil?
      yield(node.data)
      node = node.next
    end
  end

  # def self.index
  # end

  # def insert(index, value)
  # end

  # def delete_at(index)
  # end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  class Node
    attr_accessor :data, :next

    def initialize(data, next_node)
      self.data = data
      self.next = next_node
    end
  end
end
