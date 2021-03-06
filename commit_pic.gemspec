# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "commit_pic/version"

Gem::Specification.new do |s|
  s.name        = "commit_pic"
  s.version     = CommitPic::VERSION
  s.authors     = ["Richard Luther", "Laura DeWald"]
  s.email       = ["richard.luther@gmail.com", "laurardewald@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "commit_pic"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "pry"
  s.add_runtime_dependency "git","~> 1.2.5"
  s.add_runtime_dependency "httparty","~> 0.9.0"
  s.bindir = 'bin'
end
