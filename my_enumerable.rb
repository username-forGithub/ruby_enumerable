module MyEnumerable
  def all?
    nums = []
    list.each { |num| nums.push(num) if yield num }
    p nums.length == list.length
  end

  def any?
    nums = []
    list.each { |num| nums.push(num) if yield num }
    p !nums.empty?
  end
end

def filter
  filtered_nums = []
  list.each { |num| filtered_nums.push(num) if yield num }
  p filtered_nums
end
