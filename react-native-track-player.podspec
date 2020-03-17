require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.license      = package["license"]

  s.author       = "David Chavez"
  s.homepage     = package['repository']['url']
  s.platform     = :ios, "10.0"
  s.swift_version = "5.0"

  s.source       = { :git => 'https://github.com/kalmahik/react-native-track-player.git', :branch => "v2" }
  s.source_files  = "ios/RNTrackPlayer/*.{h,m,swift}",
                    "ios/RNTrackPlayer/Utils/**/*.{h,m,swift}",
                    "ios/RNTrackPlayer/Models/**/*.{h,m,swift}",
                    "ios/RNTrackPlayer/Support/**/*.{h,m,swift}"

  s.dependency "React"
  s.dependency "SwiftAudio"
end
