# motion-my_env

motion-my_env is a simple environment managing solution on RubyMotion app.

## Installation

Add this line to your application's Gemfile:

    gem 'motion-my_env'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-my_env

## Usage

in you Rakefile

```ruby
Motion::Project::App.setup do |app|
  ...
  app.my_env.file = './config/environment.yaml'
  ...
end
```

in config/environment.yaml

```yaml
consumer_key: xxx
consumer_secret: XXX
```

in app code after build, motion-my_env define `MY_ENV` constant variable as Hash.

```ruby
p MY_ENV #=> { 'consumer_key' => 'xxx', 'consumer_secret' => 'XXX' }
```
## Why don't you use `ENV`?

`ENV` constant variable has been already defined by RubyMotion runtime as a NSObject instance,
and, that can't be assigned Fixnum's object.

```
(main)> ENV
ENV
=> {}
(main)> ENV.class
ENV.class
=> NSObject
(main)> ENV['aaa'] = 1
ENV['aaa'] = 1
2013-08-18 11:57:00.845 shiori[74941:c07] can't convert Fixnum into String (TypeError)
=> #<TypeError: can't convert Fixnum into String>
(main)> MY_ENV
MY_ENV
2013-08-18 11:55:02.929 shiori[74941:c07] uninitialized constant MY_ENV (NameError)
=> #<NameError: uninitialized constant MY_ENV>
```

So, I use original constant variable name.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
