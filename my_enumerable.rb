module MyEnumerable
  def all?
    if block_given?
      each { |item| false unless yield(item) }
    else
      each { |item| false unless item }
    end
    true
  end
end
