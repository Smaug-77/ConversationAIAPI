Pod::Spec.new do |s|
  s.name             = 'ConversationalAIAPI-test'
  s.version          = '1.0.0'
  s.summary          = 'ConversationalAI API for iOS - A framework for integrating AI conversation capabilities with Agora RTC/RTM (Test Version)'
  s.description      = <<-DESC
  ConversationalAI API provides a comprehensive solution for integrating AI conversation capabilities into iOS applications using Agora RTC and RTM SDKs. It supports text and image messaging, real-time transcript rendering, agent state management, and performance monitoring.
  
  Key features:
  - Send text and image messages to AI agents
  - Real-time transcript rendering (word-level or sentence-level)
  - Agent state monitoring and event handling
  - Performance metrics tracking
  - Audio optimization for AI conversations
                       DESC

  s.homepage         = 'https://github.com/Smaug-77/ConversationAIAPI'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'qinhui' => 'qinhui@agora.io' }
  s.source           = { :git => 'https://github.com/Smaug-77/ConversationAIAPI.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  s.source_files = [
    'ConversationalAIAPI.swift',
    'ConversationalAIAPIImpl.swift',
    'Transcript/**/*.swift'
  ]

  s.dependency 'AgoraRtcEngine_iOS', '>= 4.5.1'
  # Use RTM lite version (2.2.2+) to avoid aosl.xcframework conflict with RTC SDK
  # Reference: https://doc.shengwang.cn/faq/integration-issues/rtm2-rtc-integration-issue
  s.dependency 'AgoraRtm/RtmKit', '>= 2.2.2'

  s.frameworks = 'Foundation', 'UIKit'
  s.requires_arc = true
end

