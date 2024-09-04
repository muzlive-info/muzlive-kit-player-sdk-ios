Pod::Spec.new do |spec|
  spec.name         = "kitplayer-sdk"
  spec.version      = "0.0.1"
  spec.summary      = "KiTplayer SDK for iOS Framework"
  spec.description  = "KiTplayer SDK for iOS Framework KiTalbum tag and play"
  spec.homepage     = "https://www.kitbetter.com"
  spec.license      = { :type => 'Commercial', :file => 'KiTplayerSDK/LICENSE.md' }
  spec.authors      = {
    "Jaeyoung Lee" => "jy.lee@muzlive.com"
  }
  spec.swift_versions = ['5.4', '5.5', '5.6']
  spec.platform     = :ios, "14.0"
  spec.requires_arc = true
  spec.documentation_url = "https://kitbetter-web.github.io/kit-player-sdk-docs"
  spec.source       = { :http => "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/v1.0.27/KiTPlayerSDK.xcframework.zip", :sha1 => "e495b37b7e2f983db296eaee634f46e2a3e12d6a" }
  spec.vendored_frameworks = 'Sources/GoogleCast/GoogleCast.xcframework', 'XCFramework/KiTPlayerSDK.xcframework'
  spec.dependency "BitmovinPlayer"
  spec.dependency "lottie-ios"
end
