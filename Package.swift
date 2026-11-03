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
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.1.TEST/AgoraRtcKit.xcframework.zip",
            checksum: "1b4075f4a19ae7f1730ebd04d1e88e8f0dac6c9436f8c5d0e6915280427c2a11"
        ),
        .binaryTarget(
            name: "Agorafdkaac",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.1.TEST/Agorafdkaac.xcframework.zip",
            checksum: "c2d886e1f14b7324c2998faebd9f30245d40c0a61c47bb575c9da874cd2be6b5"
        ),
        .binaryTarget(
            name: "AgoraffmpegExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.1.TEST/AgoraffmpegExtension.xcframework.zip",
            checksum: "aab71db48604aee904306801c1151cae59151223400f99d8ef742da674b78b92"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.1.TEST/AgoraSoundTouch.xcframework.zip",
            checksum: "3d686124a09e7681275c1668b2a6c977ee2677162768d696f9dca092c7a66f40"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.1.TEST/AgoraAiNoiseSuppressionExtension.xcframework.zip",
            checksum: "8b96325be4734f4e563932870d12898a9ea82a80a573de41d16a0ebc226a451c"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.1.TEST/AgoraAiNoiseSuppressionLLExtension.xcframework.zip",
            checksum: "226ae4ba1fac8223d84ad2986b7baa55df053a154625b0ba94ef39019cde38d0"
        ),
        .binaryTarget(
            name: "AgoraAudioBeautyExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.1.TEST/AgoraAudioBeautyExtension.xcframework.zip",
            checksum: "37def6fd46189fa6f5104637af8ce7e0c6670b206d8b8d012f9c58d8a1018e27"
        ),
        .binaryTarget(
            name: "AgoraSpatialAudioExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.1.TEST/AgoraSpatialAudioExtension.xcframework.zip",
            checksum: "28de5722122e6614eaec1a442b543362439335ef42d2c39ca8abc96b4d78e75c"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.1.TEST/AgoraAiEchoCancellationExtension.xcframework.zip",
            checksum: "b38457ca640ad6b0ac857a56a77319399fffd339f07713d5c0b92ae61c86b3d5"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.7.1.TEST/AgoraAiEchoCancellationLLExtension.xcframework.zip",
            checksum: "634dcf52779ec82eee1798e0f91f533f1560784c63c73d6cfc1aecf7db7118cb"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
