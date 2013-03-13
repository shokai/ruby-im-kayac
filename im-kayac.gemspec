lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'im-kayac/version'

Gem::Specification.new do |gem|
  gem.name          = "im-kayac"
  gem.version       = ImKayac::VERSION
  gem.authors       = ["Sho Hashimoto"]
  gem.email         = ["hashimoto@shokai.org"]
  gem.description   = %q{post message http://im.kayac.com}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/shokai/ruby-im-kayac"

  gem.files         = `git ls-files`.split($/).reject{|i| i=="Gemfile.lock" }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "json"
  gem.add_dependency "httparty"
end
