# -*- encoding: utf-8 -*-
require File.expand_path("../lib/jekyll-code-block-linenos/version", __FILE__)

Gem::Specification.new do |s|
  s.name = "jekyll-code-block-linenos"
  s.version = JekyllCodeBlockLinenos.version
  s.platform = Gem::Platform::RUBY
  s.authors = ["Jihoon Kim"]
  s.email = 'hoonti06@gmail.com'
  s.homepage = "https://github.com/hoonti06/jekyll-code-block-linenos"
  s.summary = "Jekyll hightlight tag including linenos converter"
  s.description = "'jekyll-code-block-linenos' can replace triple backticks code-block including keyword 'linenos' in markdown with 'highlight tag including linenos' before rendering markdown to html."
  s.license = 'MIT'

  s.required_ruby_version = '>= 2.6'

  s.add_dependency "jekyll", '~> 4.0', '>= 4.0'
  s.add_dependency "rouge", '~> 3.0', '>= 3.0'

  s.files = Dir['Gemfile', 'LICENSE', 'jekyll-code-block-linenos.gemspec', 'lib/**/*.rb']
end


