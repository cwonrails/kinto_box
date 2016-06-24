# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kinto_box/version'

Gem::Specification.new do |spec|
  spec.name          = "kinto_box"
  spec.version       = KintoBox::VERSION
  spec.authors       = ["Kavya Sukumar"]
  spec.email         = ["Kavya.Sukumar@voxmedia.com"]

  spec.summary       = %q{Kinto http client in ruby}
  spec.description   = %q{Kinto http client in ruby}
  spec.homepage      = "http://github.com/kavyasukumar/kinto_box"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'httparty', '~> 0.13.7'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'json', '~> 1.8', '>= 1.8.3'
  spec.add_development_dependency "minitest", "~> 5.0"
end
