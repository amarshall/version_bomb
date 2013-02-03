require 'version_bomb/version'

module VersionBomb
  def self.bomb! name, version, requirement, message = nil
    requirement = Gem::Requirement.create requirement
    message = ["#{name} version is #{version} but #{requirement} required", message].compact.join(': ')
    raise Bomb.new message unless requirement.satisfied_by? version
  end

  class Bomb < StandardError; end
end
