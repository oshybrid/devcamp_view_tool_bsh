
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "devcamp_view_tool_bsh/version"

Gem::Specification.new do |spec|
  spec.name          = "devcamp_view_tool_bsh"
  spec.version       = DevcampViewToolBsh::VERSION
  spec.authors       = ["Brad Hutchins"]
  spec.email         = ["oshybrid@gmail.com"]

  spec.summary       = %q{Various view specific methods for application I use}
  spec.description   = %q{Provides generated HTML data for Rails Applications.}
  spec.homepage      = "https://devcamp.com"

  
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
