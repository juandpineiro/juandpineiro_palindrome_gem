lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "juandpineiro_palindrome/version"

Gem::Specification.new do |spec|
  spec.name          = "juandpineiro_palindrome"
  spec.version       = JuandpineiroPalindrome::VERSION
  spec.authors       = ["Juan Piñeiro"]
  spec.email         = ["juandpineiro@gmail.com"]

  spec.summary       = %q{Palindrome detector}
  spec.description   = %q{Ruby gem for detecting palindromes from the tutorial "Learn Enough Ruby to Be Dangerous" by Michael Hartl}
  spec.homepage      = "https://github.com/juandpineiro/juandpineiro_palindrome_gem"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/juandpineiro/juandpineiro_palindrome_gem"
  spec.metadata["changelog_uri"] = "https://github.com/juandpineiro/juandpineiro_palindrome_gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
