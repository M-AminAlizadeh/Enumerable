module MyEnumerable
  def all?
    if block_given?
      each { |item| return false unless yield(item) }
    else
      each { |item| return false unless item }
    end
    true
  end

  def any?
    if block_given?
      each { |item| return true if yield(item) }
    else
      each { |item| return true if item }
    end
    false
  end

  def filter
    filter_list = []
    if block_given?
      each { |item| filter_list.push(item) if yield(item) }
      filter_list
    else
      filter
    end
  end
end
