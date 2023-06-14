class Attendee

  attr_reader :name
  def initialize(hash_info)
    @name = hash_info[:name]
    @budget_dollar = hash_info[:budget]
  end

  def budget
    @budget_dollar.delete! "$"
    @budget_dollar.to_i
  end
end