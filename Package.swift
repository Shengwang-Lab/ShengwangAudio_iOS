// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShengwangAudio_iOS",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "RtcBasic", targets: ["AgoraRtcKit", "Agorafdkaac", "Agoraffmpeg", "AgoraSoundTouch", "ShengwangInfra_iOS"]),
        .library(name: "AINS", targets: ["AgoraAiNoiseSuppressionExtension"]),
        .library(name: "AINSLL", targets: ["AgoraAiNoiseSuppressionLLExtension"]),
        .library(name: "AudioBeauty", targets: ["AgoraAudioBeautyExtension"]),
        .library(name: "SpatialAudio", targets: ["AgoraSpatialAudioExtension"]),
        .library(name: "AIAEC", targets: ["AgoraAiEchoCancellationExtension"]),
        .library(name: "AIAECLL", targets: ["AgoraAiEchoCancellationLLExtension"]),
        .library(name: "LipSync", targets: ["AgoraLipSyncExtension"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Shengwang-Lab/ShengwangInfra_iOS.git", from: "1.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST1/AgoraRtcKit.xcframework.zip",
            checksum: "a552f9bdcc62b69d5e2816602ddfa9bff059f73ae5d148a39db20a27b73e4235"
        ),
        .binaryTarget(
            name: "Agorafdkaac",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST1/Agorafdkaac.xcframework.zip",
            checksum: "bda9bc7d263e237232114d30d51b9c9b94f3ca6cf938b4f63af1bc2c04511148"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST1/Agoraffmpeg.xcframework.zip",
            checksum: "7fd515c46e4c83e26d957e447cf3b060064cbfd294dcc6ac702f83c3205574c2"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST1/AgoraSoundTouch.xcframework.zip",
            checksum: "d298b5020ad77e6b4a9c03167d2f23ea2e26acae1902a89f06d457597fc30aab"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST1/AgoraAiNoiseSuppressionExtension.xcframework.zip",
            checksum: "80a20abff1e47df279a75e33a3c81c41e743dc5c33b502a0c7092d63b1e13783"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST1/AgoraAiNoiseSuppressionLLExtension.xcframework.zip",
            checksum: "697f45b783ffe70aba9a3d7b0b6660a744024e242c5a8bed7d708b2378480ca0"
        ),
        .binaryTarget(
            name: "AgoraAudioBeautyExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST1/AgoraAudioBeautyExtension.xcframework.zip",
            checksum: "fac34358fb7d5dbd2b579da6340a3f05c9f5b49762a93ff0216a9fa619f08c52"
        ),
        .binaryTarget(
            name: "AgoraSpatialAudioExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST1/AgoraSpatialAudioExtension.xcframework.zip",
            checksum: "8e95dd73ed216fc9b16bcf606a897a3e8832942e2ffe85350eddf514b9f24037"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST1/AgoraAiEchoCancellationExtension.xcframework.zip",
            checksum: "a007ef479018fe73c1e962e68fb7cb727d0462a2fbf905804e928f626ccd581e"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST1/AgoraAiEchoCancellationLLExtension.xcframework.zip",
            checksum: "c2205f0c2538ae508335b759f711b616c784e66701d83db7434a8f3c1a5cab58"
        ),
        .binaryTarget(
            name: "AgoraLipSyncExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST1/AgoraLipSyncExtension.xcframework.zip",
            checksum: "b3ff66cbb9f61b63a4cc8fa5b615a03be59b42e2cd8efed544c58ab9dba1aa05"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
