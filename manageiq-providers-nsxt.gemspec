# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'manageiq/providers/nsxt/version'

Gem::Specification.new do |spec|
  spec.name          = "manageiq-providers-nsxt"
  spec.version       = ManageIQ::Providers::Nsxt::VERSION
  spec.authors       = ["ManageIQ Authors"]

  spec.summary       = "ManageIQ plugin for the VMware NSX-T provider."
  spec.description   = "ManageIQ plugin for the VMware NSX-T provider."
  spec.homepage      = "https://github.com/ManageIQ/manageiq-providers-nsxt"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "simplecov"
end
