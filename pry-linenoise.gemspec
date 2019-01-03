require './lib/pry-linenoise/version'

Gem::Specification.new do |s|
  s.name        = 'pry-linenoise'
  s.version     = PryLinenoise::VERSION.dup
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.summary     = 'Readline alternative for Pry'
  s.description = <<DESC
Makes https://github.com/kyrylo/linenoise-rb work in Pry as a Readline alternative.
DESC
  s.author      = 'Kyrylo Silin'
  s.email       = 'silin@kyrylo.org'
  s.homepage    = 'https://github.com/pry/pry-linenoise'
  s.license     = 'MIT'

  s.require_path = 'lib'
  s.files        = ['lib/pry-linenoise.rb', *Dir.glob('lib/**/*')]
  s.test_files   = Dir.glob('spec/**/*')

  s.required_ruby_version = '>= 2.1'

  s.add_dependency 'linenoise', '~> 1.1'
end
