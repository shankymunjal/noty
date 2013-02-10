# -*- encoding: utf-8 -*-
require File.expand_path('../lib/noty/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Shanky Munjal"]
  gem.email         = ["shankymunjal89@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{create notification bar for flash message}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "noty"
  gem.require_paths = ["lib"]
  gem.version       = Noty::VERSION
end
