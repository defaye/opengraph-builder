# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'opengraph_builder/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'opengraph_builder'
  s.version     = OpenGraphBuilder::VERSION
  s.authors     = ['Jonathan Feist']
  s.email       = ['jonathan.feist@unep-wcmc.org']
  s.homepage    = 'https://github.com/defaye/opengraph-builder'
  s.summary     = 'OpenGraph Meta Tag Builder'
  s.description = 'A helper for creating OpenGraph-compatible Meta Tags for your pages'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.2.0'

  s.add_development_dependency 'sqlite3'
end
