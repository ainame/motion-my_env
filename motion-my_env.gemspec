# -*- encoding: utf-8 -*-
VERSION = "1.0"

Gem::Specification.new do |spec|
  spec.name          = "motion-my_env"
  spec.version       = VERSION
  spec.authors       = ["ainame"]
  spec.email         = ["s.namai.2012@gmail.com"]
  spec.description   = %q{motion-my_env is a simple enviroment managing solution on RubyMotion app. motion-my_env define MY_ENV variable on RubyMotion runtime which created by defineded yaml file.}
  spec.summary       = %q{motion-my_env is a simple environment managing solution on RubyMotion app.}
  spec.homepage      = ""
  spec.license       = ""

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
