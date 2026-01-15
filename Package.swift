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
        .package(url: "https://github.com/Shengwang-Lab/ShengwangInfra_iOS.git", from: "1.3.5")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2/AgoraRtcKit.xcframework.zip",
            checksum: "6066feee1f9aa45961992d947ef447a770a8a985a7088fc027815877bd9ef370"
        ),
        .binaryTarget(
            name: "Agorafdkaac",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2/Agorafdkaac.xcframework.zip",
            checksum: "e0b92bfe7193c041158d06872602386b5b9ffe13a2dde50a9742d1a6eff6ede7"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2/Agoraffmpeg.xcframework.zip",
            checksum: "3376dee60cebbff41a2532ae1812a2927bdbb527742dc11722a357bd6d2535c4"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2/AgoraSoundTouch.xcframework.zip",
            checksum: "9acf7b15213b3a1ec1c50b9c34ed501b81bf528f9b1fbc72c934489dd40779c7"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2/AgoraAiNoiseSuppressionExtension.xcframework.zip",
            checksum: "d908e6ae133710312404d04a0ac98a1d08baaff3347e57c4409e3e5ec7963232"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2/AgoraAiNoiseSuppressionLLExtension.xcframework.zip",
            checksum: "0c44789f188ad9375f626845fdde5b5496bb73748edf5994509eb184643a453b"
        ),
        .binaryTarget(
            name: "AgoraAudioBeautyExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2/AgoraAudioBeautyExtension.xcframework.zip",
            checksum: "73e88915bec30fe5dbedcb770f7918baa1dfec3e6a10945199f5d4f86b8e101c"
        ),
        .binaryTarget(
            name: "AgoraSpatialAudioExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2/AgoraSpatialAudioExtension.xcframework.zip",
            checksum: "f78dbc5a68a55e0335b711939fbcd3916d642f6ab720db66c4cd51c0c3287c96"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2/AgoraAiEchoCancellationExtension.xcframework.zip",
            checksum: "cc4e7126950c1b9cc5783a7bccaf5a78dc4439fa1e2362f2dcccac582d54a5c9"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2/AgoraAiEchoCancellationLLExtension.xcframework.zip",
            checksum: "eca7a86f584f71bf38780e7defc42ccc28881cdcf2f5e3a53ac869842bb5917a"
        ),
        .binaryTarget(
            name: "AgoraLipSyncExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2/AgoraLipSyncExtension.xcframework.zip",
            checksum: "929c58c859a0d31f3cc3e2cf93e06a9766ce0888e8c4cd687ca4da5d15133d99"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
