# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "surround"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Veselin Todorov"]
  s.date = "2012-02-14"
  s.description = "Surround a method, save a polar bear."
  s.email = "hi@vesln.com"
  s.extra_rdoc_files = ["lib/surround.rb", "lib/surround/base.rb"]
  s.files = ["History.md", "Manifest", "Rakefile", "Readme.md", "lib/surround.rb", "lib/surround/base.rb", "spec/spec_helper.rb", "spec/surround/base_spec.rb", "spec/surround_spec.rb", "surround.gemspec"]
  s.homepage = "http://github.com/vesln/surround.rb"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Surround", "--main", "Readme.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "surround"
  s.rubygems_version = "1.8.15"
  s.summary = "Surround a method, save a polar bear."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
