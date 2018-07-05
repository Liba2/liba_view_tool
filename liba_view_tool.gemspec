
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "liba_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "liba_view_tool"
  spec.version       = LibaViewTool::VERSION
  spec.authors       = ["liba"]
  spec.email         = ["liba@test.com"]

  spec.summary       = %q{various view for my learning and use.}
  spec.description   = %q{provide HTML data for Rails applocations.}
  spec.homepage      = "https://devcamp.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
