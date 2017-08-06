class TodoList

  def initialize(list)
    @list = list
  end

  def get_items()
    @list
  end

  def add_item(str)
    @list.push(str)
  end

  def delete_item(str)
    @list.delete(str)
  end

  def get_item(idx)
    @list[idx]
  end
end