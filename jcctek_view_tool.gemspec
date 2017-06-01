# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jcctek_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "jcctek_view_tool"
  spec.version       = JcctekViewTool::VERSION
  spec.authors       = ["Jose Carlos Calzada"]
  spec.email         = ["josecarlosplatos@gmail.com"]

  spec.summary       = %q{Genera código html con información del copyrigth de mi página.}
  spec.description   = %q{Genera código html con información del copyrigth de mi app}
  spec.homepage      = "http://www.jcctek.com."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
