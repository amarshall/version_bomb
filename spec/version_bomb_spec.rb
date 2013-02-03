require './lib/version_bomb'

describe VersionBomb do
  describe ".bomb!" do
    it "blows up when the version matches the requirement" do
      version = double
      requirement = Gem::Requirement.new
      requirement.stub(:satisfied_by?).with(version).and_return(false)

      expect do
        VersionBomb.bomb! double, version, requirement
      end.to raise_error VersionBomb::Bomb
    end

    it "does nothing when the version doesn't match the requirement" do
      version = double
      requirement = Gem::Requirement.new
      requirement.stub(:satisfied_by?).with(version).and_return(true)

      expect do
        VersionBomb.bomb! double, version, requirement
      end.to_not raise_error VersionBomb::Bomb
    end

    it "accepts a custom message" do
      begin
        message = 'Foo bar baz!'
        requirement = Gem::Requirement.new
        requirement.stub(:satisfied_by?).and_return(false)
        VersionBomb.bomb! double, double, requirement, message
      rescue => e
        e.message.should include message
      end
    end
  end
end
