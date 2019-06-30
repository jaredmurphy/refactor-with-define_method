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

  describe "#is_moderator?" do
    it "should return true if the user is a moderator" do
      bryan = User.new(1, "Bryan", Role.new("moderator"))
      expect(bryan.is_moderator?).to be(true)
    end
  end

  describe "#is_admin?" do
    it "should return true if the user is a admin" do
      katie = User.new(1, "Katie", Role.new("admin"))
      expect(katie.is_admin?).to be(true)
    end
  end

  describe "#is_super_admin?" do
    it "should return true if the user is a super_admin" do
      katie = User.new(1, "Katie", Role.new("super_admin"))
      expect(katie.is_super_admin?).to be(true)
    end
  end

end
