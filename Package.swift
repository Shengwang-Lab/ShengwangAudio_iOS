// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShengwangAudio_iOS",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "RtcBasic", targets: ["AgoraRtcKit", "Agorafdkaac", "AgoraffmpegExtension", "AgoraSoundTouch", "ShengwangInfra_iOS"]),
        .library(name: "AINS", targets: ["AgoraAiNoiseSuppressionExtension"]),
        .library(name: "AINSLL", targets: ["AgoraAiNoiseSuppressionLLExtension"]),
        .library(name: "AudioBeauty", targets: ["AgoraAudioBeautyExtension"]),
        .library(name: "SpatialAudio", targets: ["AgoraSpatialAudioExtension"]),
        .library(name: "AIAEC", targets: ["AgoraAiEchoCancellationExtension"]),
        .library(name: "AIAECLL", targets: ["AgoraAiEchoCancellationLLExtension"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Shengwang-Lab/ShengwangInfra_iOS.git", .exact("1.3.16"))
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.0/AgoraRtcKit.xcframework.zip",
            checksum: "676931b4fa0e332a269aa0cb0faf05a69688b55ef812f72bdfc793bce1bce24a"
        ),
        .binaryTarget(
            name: "Agorafdkaac",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.0/Agorafdkaac.xcframework.zip",
            checksum: "124851fe30a6b68508a59bd0ddf43d4c430f4123bf5ee62e7a7a07a35003bb60"
        ),
        .binaryTarget(
            name: "AgoraffmpegExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.0/AgoraffmpegExtension.xcframework.zip",
            checksum: "0d98a5a7bc1d2a6dbd9759a27566b7e2b8c10aed0301398dac19fb1cb321d058"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.0/AgoraSoundTouch.xcframework.zip",
            checksum: "8a84407e4bf4e7c0d891b7b7235ba7464063180e70c7967c462e53bcc4e9c06c"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.0/AgoraAiNoiseSuppressionExtension.xcframework.zip",
            checksum: "dda1358dcc435f9fcc1a46e2b5ffb58701e8be7155e9c3dba21461650880225e"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.0/AgoraAiNoiseSuppressionLLExtension.xcframework.zip",
            checksum: "a9502c5e939f53a6a565671616a5d99decb03a05c6c2474803643279d377dfcb"
        ),
        .binaryTarget(
            name: "AgoraAudioBeautyExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.0/AgoraAudioBeautyExtension.xcframework.zip",
            checksum: "e31215534380ab1940bf7a48525d2a3ce6c8b686c7ef343f332614ab6518403d"
        ),
        .binaryTarget(
            name: "AgoraSpatialAudioExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.0/AgoraSpatialAudioExtension.xcframework.zip",
            checksum: "b45fd09b2e9c5e53a698ef4ad33fea922c1f9a751dfc2429412c9b6382260a36"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.0/AgoraAiEchoCancellationExtension.xcframework.zip",
            checksum: "2d38bc962f1df1ac681ca9f95144241cbba34198b6fb5ee65d5eaf53ed30d13c"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.0/AgoraAiEchoCancellationLLExtension.xcframework.zip",
            checksum: "7129ca50fbe4be6a03a6a38376a32a9fa70b1e86b36021139bba0cb50aaf81f2"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
