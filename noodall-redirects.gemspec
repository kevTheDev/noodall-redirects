# -*- encoding: utf-8 -*-
require File.expand_path("../lib/noodall/redirects/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "noodall-redirects"
  s.version     = Noodall::Redirects::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kevin Edwards"]
  s.email       = ["info@wearebeef.co.uk"]
  s.homepage    = "https://github.com/noodall/noodall-form-builder"
  s.summary     = "Noodall Redirects"
  s.description = "Functionality for handling editable redirects"

  s.required_rubygems_version = ">= 1.3.6"

  s.add_development_dependency "bundler", ">= 1.0.0"
  
  s.add_dependency "rack-rewrite", "~> 1.2.1"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
