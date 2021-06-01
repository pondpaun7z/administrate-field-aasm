Gem::Specification.new do |spec|
  spec.name = "administrate-field-aasm"
  spec.version = "0.1.1"
  spec.authors = ["Theeraphat Jantakat"]
  spec.email = ["pppangpondpp7@gmail.com"]

  spec.homepage = "https://github.com/pondpaun7z/administrate-field-aasm"
  spec.summary = "Custom Administrate Field for AASM gem."
  spec.description = "Custom Administrate Field for AASM gem."
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails"
  spec.add_dependency "administrate"

  spec.add_development_dependency "puma"
  spec.add_development_dependency "aasm"
  spec.add_development_dependency "standardrb"
end
