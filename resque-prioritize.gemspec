require_relative 'lib/resque/plugins/prioritize/version'

Gem::Specification.new do |spec|
  spec.name          = 'resque-prioritize'
  spec.version       = Resque::Plugins::Prioritize::VERSION
  spec.authors       = ['Olexandr Hoshylyk']
  spec.email         = ["gashuk95@gmail.com"]

  spec.summary       = 'Prioritize jobs in resque queue'
  spec.description   = 'Implement jobs prioritization inside resque queue'
  spec.homepage      = 'https://github.com/verbit/resque-prioritize'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata['allowed_push_host'] = 'https://github.com/verbit/resque-prioritize'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/verbit/resque-prioritize'
  spec.metadata['changelog_uri'] = 'https://github.com/verbit/resque-prioritize'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'resque', '~> 2.0.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its' # its(:foo) syntax
  spec.add_development_dependency 'saharspec', '~> 0.0.5' # some syntactic sugar for RSpec
end
