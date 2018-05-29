require File.expand_path('../lib/smart_proxy_proxy_wol/proxy_wol_version', __FILE__)
require 'date'

Gem::Specification.new do |s|
  s.name        = 'smart_proxy_proxy_wol'
  s.version     = Proxy::Dns::ProxyWol::VERSION
  s.date        = Date.today.to_s
  s.license     = 'GPL-3.0'
  s.authors     = ['Dubecq Guillaume']
  s.email       = ['dubecq@d-ns.Fr']
  s.homepage    = 'https://github.com/theforeman/smart_proxy_proxy_wol'

  s.summary     = "Foreman's smart proxy"
  s.description = "Foreman's smart proxy"

  s.files       = Dir['{config,lib,bundler.d}/**/*'] + ['README.md', 'LICENSE']
  s.test_files  = Dir['test/**/*']

  s.add_development_dependency('rake')
  s.add_development_dependency('mocha')
  s.add_development_dependency('test-unit')
end
