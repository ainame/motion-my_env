require 'tempfile'
require 'fileutils'
require 'yaml'

module Motion
  class MyEnv
    attr_accessor :file

    def initialize(config)
      @config = config
    end

    def file= path
      add_file(generate_env_file(path))
    end

    def generate_env_file path
      yaml = YAML.load(File.open(File.expand_path(path)).read)
      env  = Tempfile.open(['motion_env', '.rb'])
      env.write <<-"ENV_FILE"
MY_ENV = #{yaml.inspect}
ENV_FILE
      env.close
      env.path
    end

    def add_file path
      files = @config.files.flatten
      @config.files << path unless files.find {|x| File.expand_path(x) == File.expand_path(path) }
    end

  end
end
