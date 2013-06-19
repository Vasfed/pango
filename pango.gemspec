# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Vasily Fedoseyev"]
  gem.email         = ["vasilyfedoseyev@gmail.com"]
  gem.description   = %q{Pango gem from ruby-gnome2 project team}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "pango"
  gem.require_paths = ["lib"]
  gem.version       = '1.1.3.2'

  gem.extensions = "ext/pango/extconf.rb"

  gem.add_dependency "glib2", '>=1.1.3'
  gem.add_dependency "cairo", '>=1.10.0'
  gem.add_development_dependency "rake-compiler"
end
