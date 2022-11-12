# frozen_string_literal: true

require_relative 'lib/ghcurl'

Gem::Specification.new do |spec|
  spec.name = "ghcurl"
  spec.version = Ghcurl::VERSION
  spec.authors = ["ccmywish"]
  spec.email = ["ccmywish@qq.com"]

  spec.license = "MIT"
  spec.summary = "Download files (and install) from Github releases"
  spec.description = "Download files (and install) from Github releases."
  spec.homepage = "https://github.com/ccmywish/ghcurl"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "bin"
  spec.executables = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "octokit", "~> 6.0"
  spec.add_dependency "highline", "~> 2.0"
  spec.add_dependency "cliswitch", "~> 0.3.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
