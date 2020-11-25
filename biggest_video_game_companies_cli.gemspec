require_relative 'lib/biggest_video_game_companies_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "biggest_video_game_companies_cli"
  spec.version       = BiggestVideoGameCompaniesCli::VERSION
  spec.authors       = ["Seanyo89"]
  spec.email         = ["seanolawrence_1989@icloud.com"]

  spec.summary       = "videogames"
  spec.description   = 
  spec.homepage      =  "https://github.com/Seanyo89/Game_Hub"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/Seanyo89/Game_Hub"

  spec.metadata["homepage_uri"] = "https://github.com/Seanyo89/Game_Hub"
  spec.metadata["source_code_uri"] = "https://github.com/Seanyo89/Game_Hub"
  spec.metadata["changelog_uri"] = "https://github.com/Seanyo89/Game_Hub"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
