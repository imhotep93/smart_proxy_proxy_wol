require 'smart_proxy_proxy_wol/proxy_wol_version'

module Proxy::Dns::ProxyWol
  class Plugin < ::Proxy::Provider
    plugin :proxy_wol, ::Proxy::Dns::ProxyWol::VERSION

    # Settings listed under default_settings are required.
    # An exception will be raised if they are initialized with nil values.
    # Settings not listed under default_settings are considered optional and by default have nil value.
    default_settings :required_setting => 'default_value', :required_path => '/must/exist'

    requires :dns, '>= 1.15'

    # Verifies that a file exists and is readable.
    # Uninitialized optional settings will not trigger validation errors.
    validate_readable :required_path, :optional_path

    # Loads plugin files and dependencies
    load_classes ::Proxy::Dns::ProxyWol::PluginConfiguration
    # Loads plugin dependency injection wirings
    load_dependency_injection_wirings ::Proxy::Dns::ProxyWol::PluginConfiguration
  end
end
