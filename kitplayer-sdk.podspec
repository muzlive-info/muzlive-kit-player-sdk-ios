Pod::Spec.new do |spec|
  spec.name         = "kitplayer-sdk"
  spec.version      = "1.0.33"
  spec.summary      = "KiTplayer SDK for iOS Framework"
  spec.description  = "KiTplayer SDK for iOS Framework KiTalbum tag and play"
  spec.homepage     = "https://www.kitbetter.com"
  spec.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  spec.authors      = {
    "Jaeyoung Lee" => "jy.lee@muzlive.com"
  }
  spec.swift_versions = ['5.4', '5.5', '5.6']
  spec.platform     = :ios, "14.0"
  spec.requires_arc = true
  spec.documentation_url = "https://kitbetter-web.github.io/kit-player-sdk-docs"

  spec.source       = { :http => "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/v1.0.33/kitplayer-sdk.zip", :sha1 => "14a580ed24799c4f6750bde8201db15d1d74ab5c" }
  spec.vendored_frameworks = 'KiTplayerSDK.xcframework', 'GoogleCast.xcframework'
end
