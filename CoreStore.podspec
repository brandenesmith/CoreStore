Pod::Spec.new do |s|
    s.name = "CoreStore"
    s.version = "9.0.0"
    s.swift_version = "5.7"
    s.license = "MIT"
    s.homepage = "https://github.com/JohnEstropia/CoreStore"
    s.documentation_url = "https://JohnEstropia.github.io/CoreStore"
    s.summary = "Unleashing the real power of Core Data with the elegance and safety of Swift"
    s.author = { "John Rommel Estropia" => "rommel.estropia@gmail.com" }
    s.source = { :git => "https://github.com/JohnEstropia/CoreStore.git", :tag => s.version.to_s }

    s.ios.deployment_target = "13.0"
    s.osx.deployment_target = "10.15"
    s.watchos.deployment_target = "6.0"
    s.tvos.deployment_target = "13.0"

    s.source_files = "Sources", "Sources/**/*.{swift,h,m}"
    s.public_header_files = "Sources/**/*.h"
    s.frameworks = "Foundation", "CoreData"
    s.requires_arc = true
    s.pod_target_xcconfig = { 'OTHER_SWIFT_FLAGS[config=Debug]' => '-D DEBUG', 'OTHER_LDFLAGS' => '-weak_framework Combine -weak_framework SwiftUI' }
end
