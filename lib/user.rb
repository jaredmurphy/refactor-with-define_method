require "role"

class User
  attr_accessor :id, :name, :role

  def initialize(id, name, role)
    @id = id
    @name = name
    @role = role
  end

  Role::TYPES.each do |role_type|
    define_method("is_#{role_type}?") do
      @role.type == role_type
    end
  end

end

