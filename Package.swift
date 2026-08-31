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
        .package(url: "https://github.com/Shengwang-Lab/ShengwangInfra_iOS.git", .exact("1.3.5"))
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.4/AgoraRtcKit.xcframework.zip",
            checksum: "6c06c54d63f695f2031d9cc3cfc39b156e51ad75f9b5dfb0633f47c4d1c02d2e"
        ),
        .binaryTarget(
            name: "Agorafdkaac",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.4/Agorafdkaac.xcframework.zip",
            checksum: "01fe33b6f3e9e595a2b54b22dd693e0eb0f94f7a4632b1bc62bf063ffd428791"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.4/Agoraffmpeg.xcframework.zip",
            checksum: "ae55769447deb34b45aa6d60b3c9946b717d128b91a103b7e6bd210d8a90b835"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.4/AgoraSoundTouch.xcframework.zip",
            checksum: "05805103937028b78a3fd63d8ada8886e901d2bad2baba5ac63c97d7517dc612"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.4/AgoraAiNoiseSuppressionExtension.xcframework.zip",
            checksum: "0faee213d5361251dadef007642518adde18df4800d1d8cdd6ab289d04cb179a"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.4/AgoraAiNoiseSuppressionLLExtension.xcframework.zip",
            checksum: "f602a4abf671cc3f8afb8b8c268f5602f055861525ae34f3242aa4147e0e99d0"
        ),
        .binaryTarget(
            name: "AgoraAudioBeautyExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.4/AgoraAudioBeautyExtension.xcframework.zip",
            checksum: "26dd0ca5045cace63c1553a1a5a14780a27824c867e76f118f222c11baa4fc15"
        ),
        .binaryTarget(
            name: "AgoraSpatialAudioExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.4/AgoraSpatialAudioExtension.xcframework.zip",
            checksum: "897fcd88b901a8edf35713cf9b0fd14ce0baf50b4d680a539a8d99a5b4dc51db"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.4/AgoraAiEchoCancellationExtension.xcframework.zip",
            checksum: "f375ac58cac80401b531557276422ff448a08308841c4cc6ae728a7781f98151"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.4/AgoraAiEchoCancellationLLExtension.xcframework.zip",
            checksum: "f7c85d3c6d7aae6a068ab56d974bac0c0b857255f186f7eac591f8a38e5785c0"
        ),
        .binaryTarget(
            name: "AgoraLipSyncExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.4/AgoraLipSyncExtension.xcframework.zip",
            checksum: "bbe3cae256307c7a5d685d950f5c914d00d2f26910fdda6f7759e948027ad46e"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
