platform :ios, '7.0'
pod 'ReactiveCocoa', '2.3.1'

target :TheKittenTests, :exclusive => true do
  pod 'Specta', '~> 0.2.1'
  pod 'Expecta', '~> 0.3.1'
  pod 'OCMockito', '~> 1.3.0' 
  pod 'Expecta+Comparison'
  pod 'Expecta+ReactiveCocoa'
end

post_install do |installer|
  target = installer.project.targets.find { |t| t.to_s == "Pods-TheKittenTests-Specta" }
  if (target)
    target.build_configurations.each do |config|
      s = config.build_settings['FRAMEWORK_SEARCH_PATHS']
      s = [ '$(inherited)' ] if s == nil;
      s.push('$(PLATFORM_DIR)/Developer/Library/Frameworks')
      config.build_settings['FRAMEWORK_SEARCH_PATHS'] = s
    end
  else
    puts "WARNING; Pods-TheKittenTests-Specta target not found"
  end
end
