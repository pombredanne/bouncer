# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bouncer}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrew Nesbitt"]
  s.date = %q{2010-07-05}
  s.default_executable = %q{bouncer}
  s.description = %q{Bouncer makes it easy to remove a collabroator's access to all of your github projects, perfect for when someone leaves your company or team and you don't want them to have access to your projects anymore.}
  s.email = %q{andrewnez@gmail.com}
  s.executables = ["bouncer"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "bin/bouncer",
     "bouncer.gemspec",
     "lib/bouncer.rb",
     "lib/bouncer/version.rb",
     "test/helper.rb",
     "test/test_bouncer.rb"
  ]
  s.homepage = %q{http://github.com/andrew/bouncer}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Kick people out of your github projects}
  s.test_files = [
    "test/helper.rb",
     "test/test_bouncer.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 1.4.3"])
      s.add_runtime_dependency(%q<curb>, [">= 0.7.3"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    else
      s.add_dependency(%q<json>, [">= 1.4.3"])
      s.add_dependency(%q<curb>, [">= 0.7.3"])
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, [">= 1.4.3"])
    s.add_dependency(%q<curb>, [">= 0.7.3"])
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
  end
end

