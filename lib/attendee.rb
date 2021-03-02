class Attendee
  attr_reader :name,
              :budget
  def initialize(info)
    @name = info[:name]
    arr = info[:budget].split('')
    @budget = arr[1..2].join.to_i
  end
end