# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'motion-my_env'

  if ARGV.join(' ') =~ /spec/
    app.my_env.file = './spec/app.yaml'
  else
    app.my_env.file = './app.yaml'
  end
end
