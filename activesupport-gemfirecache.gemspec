# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{activesupport-gemfirecache}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Denenberg"]
  s.date = %q{2009-09-18}
  s.description = %q{ActiveSupport-GemfireCache is a Ruby library for interfacing to a gemfire cache.}
  s.email = %q{tom@mojombo.com}
  s.extra_rdoc_files = ["README", "LICENSE"]
  #s.files = ["API.txt", "History.txt", "README.md", "VERSION.yml", "lib/grit", "lib/grit/actor.rb", "lib/grit/blame.rb", "lib/grit/blob.rb", "lib/grit/commit.rb", "lib/grit/commit_stats.rb", "lib/grit/config.rb", "lib/grit/diff.rb", "lib/grit/errors.rb", "lib/grit/git-ruby", "lib/grit/git-ruby/commit_db.rb", "lib/grit/git-ruby/file_index.rb", "lib/grit/git-ruby/git_object.rb", "lib/grit/git-ruby/internal", "lib/grit/git-ruby/internal/file_window.rb", "lib/grit/git-ruby/internal/loose.rb", "lib/grit/git-ruby/internal/pack.rb", "lib/grit/git-ruby/internal/raw_object.rb", "lib/grit/git-ruby/object.rb", "lib/grit/git-ruby/repository.rb", "lib/grit/git-ruby.rb", "lib/grit/git.rb", "lib/grit/index.rb", "lib/grit/lazy.rb", "lib/grit/merge.rb", "lib/grit/ref.rb", "lib/grit/repo.rb", "lib/grit/ruby1.9.rb", "lib/grit/status.rb", "lib/grit/submodule.rb", "lib/grit/tag.rb", "lib/grit/tree.rb", "lib/grit.rb", "lib/open3_detach.rb", "LICENSE"]
  #s.has_rdoc = true
  s.homepage = %q{http://github.com/denen99/activesupport-gemfirecache}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{activesupport-gemfirecache}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{ActiveSupport-GemfireCache is a Ruby library for interfacing to a gemfire cache}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>, [">= 1.15"])
      s.add_runtime_dependency(%q<diff-lcs>, [">= 1.1.2"])
    else
      s.add_dependency(%q<mime-types>, [">= 1.15"])
      s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
    end
  else
    s.add_dependency(%q<mime-types>, [">= 1.15"])
    s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
  end
end

