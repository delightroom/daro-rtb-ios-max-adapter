Pod::Spec.new do |s|
  s.name = 'DaroBidMaxAdapter'
  s.version = '2.0.2'
  s.summary = 'DaroBid mediation adapter for AppLovin MAX.'
  s.homepage = 'https://github.com/delightroom/daro-rtb-ios-max-adapter'
  s.license = { :type => 'Custom', :file => 'DaroBidMaxAdapter.xcframework/LICENSE.txt' }
  s.author = { 'Delightroom' => 'dev@delightroom.com' }
  s.source = { :http => 'https://github.com/delightroom/daro-rtb-ios-max-adapter/releases/download/2.0.2/DaroBidMaxAdapter-2.0.2.zip' }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.static_framework = true
  s.vendored_frameworks = 'DaroBidMaxAdapter.xcframework'
  s.dependency 'DaroBid', '= 26.9.1800'
  s.dependency 'AppLovinSDK', '= 13.6.0'
end
