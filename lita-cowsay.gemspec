Gem::Specification.new do |spec|
  spec.name          = "lita-cowsay"
  spec.version       = "0.2.1"
  spec.authors       = ["Jeff Mueller", "Gabriel Mazetto"]
  spec.email         = ["jeff.mueller89@gmail.com", "brodock@gmail.com"]
  spec.description   = %q{A Lita handler that formats text with cowsay}
  spec.summary       = %q{Lita cowsay handler}
  spec.homepage      = "https://github.com/jefffm/lita-cowsay"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.4"
  spec.add_runtime_dependency "ruby_cowsay"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.3.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
