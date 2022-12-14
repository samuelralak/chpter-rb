require_relative "lib/chpter/version"

Gem::Specification.new do |spec|
  spec.name = "chpter-rb"
  spec.version = Chpter::VERSION
  spec.authors = ["Samuel Ralak"]
  spec.email = ["thesamuelralak@gmail.com"]

  spec.summary = "Chpter Ruby"
  spec.description = "The unofficial ruby wrapper for the Chpter REST API"
  spec.homepage = "https://github.com/samuelralak/chpter-rb"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/samuelralak/chpter-rb"
  spec.metadata["changelog_uri"] = "https://github.com/samuelralak/chpter-rb"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Gem dependencies
  #
  spec.add_dependency "faraday", "~> 2.5"
end
