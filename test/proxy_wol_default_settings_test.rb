require 'test_helper'
require 'smart_proxy_proxy_wol/proxy_wol_configuration'
require 'smart_proxy_proxy_wol/proxy_wol_plugin'

class ProxyWolDefaultSettingsTest < Test::Unit::TestCase
  def test_default_settings
    Proxy::Dns::ProxyWol::Plugin.load_test_settings({})
    assert_equal "default_value", Proxy::Dns::ProxyWol::Plugin.settings.required_setting
    assert_equal "/must/exist", Proxy::Dns::ProxyWol::Plugin.settings.required_path
  end
end
