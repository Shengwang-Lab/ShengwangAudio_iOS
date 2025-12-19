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
        .package(url: "https://github.com/Shengwang-Lab/ShengwangInfra_iOS.git", from: "1.3.4")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2-dev.4/AgoraRtcKit.xcframework.zip",
            checksum: "741d5a64317b49b53e4ec92f5b6bcdc42670cfda8fc40fe8ee61d04917d7ba75"
        ),
        .binaryTarget(
            name: "Agorafdkaac",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2-dev.4/Agorafdkaac.xcframework.zip",
            checksum: "ec241909af65eed0953d4a18838e836b452f19ffe34e9e4754d0197eab0132b7"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2-dev.4/Agoraffmpeg.xcframework.zip",
            checksum: "906ae85c6f68d2360c16f46cbb91efd28dff9c949ebe1ab4e98471c82cd39cd0"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2-dev.4/AgoraSoundTouch.xcframework.zip",
            checksum: "1d72f24e226322ffec6bbb3c4de68059b92eb0980e54e51ca6f53160b88ec2ef"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2-dev.4/AgoraAiNoiseSuppressionExtension.xcframework.zip",
            checksum: "44c64fc6cb56f7e5a135e4b316543a782e924c69b27a0cf86d73a68a9755ecb6"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2-dev.4/AgoraAiNoiseSuppressionLLExtension.xcframework.zip",
            checksum: "b26c328774aa1b56c4cc0c0bc33d0177f6d63b4370e51c8c2864d354a9925b5b"
        ),
        .binaryTarget(
            name: "AgoraAudioBeautyExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2-dev.4/AgoraAudioBeautyExtension.xcframework.zip",
            checksum: "c9d6b80c77d92c555d3de71d786e7ad8395db4d903c62773a169bdf698c7b781"
        ),
        .binaryTarget(
            name: "AgoraSpatialAudioExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2-dev.4/AgoraSpatialAudioExtension.xcframework.zip",
            checksum: "861b60c91c1537deb4c618f32732464a53e2bf39811c09dd6b42e0e5e08e4ca0"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2-dev.4/AgoraAiEchoCancellationExtension.xcframework.zip",
            checksum: "f42ecdda7b62bdea2e6b39888df681e41c592c4b8ce5cf347c3e9cfc27e1781a"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2-dev.4/AgoraAiEchoCancellationLLExtension.xcframework.zip",
            checksum: "95425c2c3369ab8c05e81a732352733d90851f8ee0a3d377d1ac2ee19b9b5a9b"
        ),
        .binaryTarget(
            name: "AgoraLipSyncExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.2-dev.4/AgoraLipSyncExtension.xcframework.zip",
            checksum: "4043d38f93f18dd6aa97d8e07bb88d23e55a6aa0a4cf59b43a1450e1e13836f3"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
