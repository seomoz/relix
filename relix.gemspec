require File.expand_path("../lib/relix/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "relix"
  s.version     = Relix::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nathaniel Talbott"]
  s.email       = ["nathaniel@talbott.ws"]
  s.homepage    = "http://github.com/ntalbott/relix"
  s.summary     = "A Redis-backed indexing layer that can be used with any (or no) backend data storage."
  s.description = "Relix is a layer that can be added on to any model to make all the normal types of querying you want to do: equality, less than/greater than, in set, range, limit, etc., quick and painless. Relix depends on Redis to be awesome at what it does - blazingly fast operations on basic data types - and layers on top of that pluggable indexing of your data for fast lookup."

  s.required_rubygems_version = ">= 1.8.6"

  # If you have other dependencies, add them here
  s.add_dependency "hiredis", "~> 0.3.2"
  s.add_dependency "redis", "~> 2.2.2"

  # If you need to check in files that aren't .rb files, add them here
  s.files = %w(
    README.md
    lib/relix.rb
    lib/relix/version.rb
  )
  s.require_path = 'lib'
end