
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-segment/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-segment"
  spec.version       = OmniAuth::Segment::VERSION
  spec.authors       = ["Ferruccio Balestreri"]
  spec.email         = ["hi@ferrucc.io"]

  spec.summary       = %q{OmniAuth strategy for Segment}
  spec.description   = %q{OmniAuth strategy for Segment}
  spec.homepage      = "https://github.com/ferrucc-io/omniauth-segment"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.6'
  spec.add_development_dependency "bundler", "~> 2.0.2"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
