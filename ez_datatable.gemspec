$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "ez_datatable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ez_datatable"
  s.version     = EzDatatable::VERSION
  s.authors     = ["Mic"]
  s.email       = ["kittiphong.mic@gmail.com"]
  s.homepage    = "https://github.com/michelloworld"
  s.summary     = "Easy and customizable datatable with your model (Only MySQL for now)."
  s.description = "Easy and customizable datatable with your model (Only MySQL for now)."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency "sqlite3"
end
