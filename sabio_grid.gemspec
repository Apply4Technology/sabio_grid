# frozen_string_literal: true

require_relative "lib/sabio_grid/version"

Gem::Specification.new do |spec|
  spec.name = "sabio_grid"
  spec.version = SabioGrid::VERSION
  spec.authors = ["Apply4"]
  spec.email = ["miron@secret-source.eu"]

  spec.summary = "Grid views for Railspec."
  spec.homepage = "https://github.com/Apply4Technology/sabio_grid"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'rails'
  spec.add_dependency 'kaminari'
  spec.add_dependency 'coffee-rails'
  spec.add_dependency "zeitwerk"

  spec.add_development_dependency('rake',  '~> 10.1')
  spec.add_development_dependency('byebug')
  spec.add_development_dependency('appraisal')

  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rspec-rails')
  spec.add_development_dependency('shoulda-matchers')
  spec.add_development_dependency('capybara')
  spec.add_development_dependency('faker')
  spec.add_development_dependency('poltergeist')
  spec.add_development_dependency('capybara-screenshot')
  spec.add_development_dependency('selenium-webdriver')

  # Required by the test app.
  spec.add_development_dependency('haml')
  spec.add_development_dependency('coderay')
  spec.add_development_dependency('jquery-rails')
  spec.add_development_dependency('jquery-ui-rails')
  spec.add_development_dependency('jquery-ui-themes')
  spec.add_development_dependency('sass-rails')
  spec.add_development_dependency('bootstrap-sass')
  spec.add_development_dependency('font-awesome-sass')
  spec.add_development_dependency('turbolinks')
  spec.add_development_dependency('therubyracer')

  spec.add_development_dependency('bundler')
  spec.add_development_dependency('simplecov')
  spec.add_development_dependency('sqlite3')

  spec.add_development_dependency('yard')
  spec.add_development_dependency('inch')
  spec.add_development_dependency('rdoc')
end
