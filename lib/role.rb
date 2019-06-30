class Role
  attr_accessor :type

  TYPES = %w[publisher moderator admin super_admin]

  def initialize(type)
    @type = type
  end

end
