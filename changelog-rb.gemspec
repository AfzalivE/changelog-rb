
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "changelog/version"

Gem::Specification.new do |spec|
  spec.name          = "changelog-rb"
  spec.version       = Changelog::VERSION
  spec.authors       = ["pinglamb"]
  spec.email         = ["pinglambs@gmail.com"]

  spec.summary       = %q{Make developers happy with http://keepachangelog.com/.}
  spec.homepage      = "https://github.com/pinglamb/changelog-rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "activesupport"
  spec.add_runtime_dependency "semantic"

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "fakefs", "~> 0.11.2"
end
