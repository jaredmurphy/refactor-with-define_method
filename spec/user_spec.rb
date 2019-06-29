require "rspec"
require_relative "../lib/user"
require_relative "../lib/role"

describe User do
  # publisher, moderator, admin

  describe "#is_publisher?" do
    it "should return true if the user is a publisher" do
      jenny = User.new(1, "Jenny", Role.new("publisher"))
      expect(jenny.is_publisher?).to be(true)
    end
  end

end
