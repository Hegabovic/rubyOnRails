class User
  attr_accessor :name
  @name = 'user'

  def initialize(name)
    name = @name
  end

  # getter
  def get_name
    @name
  end

  # setter
  def set_name=(value)
    @name = value
  end

end
