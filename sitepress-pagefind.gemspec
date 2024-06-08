require_relative "lib/sitepress/pagefind/version"

Gem::Specification.new do |spec|
  spec.name        = "sitepress-pagefind"
  spec.version     = Sitepress::Pagefind::VERSION
  spec.authors     = ["Julian Rubisch"]
  spec.email       = ["julian@julianrubisch.at"]
  spec.homepage    = "https://github.com/julianrubisch/sitepress-pagefind"
  spec.summary     = "A Pagefind integration for Sitepress"
  spec.description = spec.description
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7"
end
