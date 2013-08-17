unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

require 'project/motion-my_env'

class Motion::Project::Config
  variable :my_env

  def my_env
    @my_env ||= Motion::MyEnv.new(self)
  end
end
