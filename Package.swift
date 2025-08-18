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
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0/AgoraRtcKit.xcframework.zip",
            checksum: "6e8611bd3e8febdf71b8d91242f48ae28b5cfd4fa489d87093b8a3187f07f536"
        ),
        .binaryTarget(
            name: "Agorafdkaac",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0/Agorafdkaac.xcframework.zip",
            checksum: "23fbe5793e15382505caefa544b96f76ec494a58c786aead0e0ec45c47303118"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0/Agoraffmpeg.xcframework.zip",
            checksum: "7c2ec11919e9f4d988426bdd84f35fe0cf6100aaf31c498e73ef220cb7560375"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0/AgoraSoundTouch.xcframework.zip",
            checksum: "96a354e3afb94fd28c991c036a20e8e0422b0cd55b8de6dbdb09eeccaacc9e5e"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0/AgoraAiNoiseSuppressionExtension.xcframework.zip",
            checksum: "e7bb086021f51b65c18e73abf3b7903ea68a7e59c639a4364ddb3aa3237861fa"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0/AgoraAiNoiseSuppressionLLExtension.xcframework.zip",
            checksum: "dd987acfa47b8e7f338fe5cd36d2407f40008e19632d57cbf2c517922801936c"
        ),
        .binaryTarget(
            name: "AgoraAudioBeautyExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0/AgoraAudioBeautyExtension.xcframework.zip",
            checksum: "416722f2ee8f0a62ded59b3ba83ecbee92345babf52a18a8c77d75c67511178b"
        ),
        .binaryTarget(
            name: "AgoraSpatialAudioExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0/AgoraSpatialAudioExtension.xcframework.zip",
            checksum: "cdf9befb4481c23ffdfab1baf7540fa6d9900246625c1e3db663f011bfa6b64b"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0/AgoraAiEchoCancellationExtension.xcframework.zip",
            checksum: "34fd7b6051b8a97065cb53cf66f320b0766574fabdfa91a4cbc04ec2c257a91b"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0/AgoraAiEchoCancellationLLExtension.xcframework.zip",
            checksum: "a66f25e6e024352a94ef4b1de1c539e67867779616e905f663e573dd591ae624"
        ),
        .binaryTarget(
            name: "AgoraLipSyncExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0/AgoraLipSyncExtension.xcframework.zip",
            checksum: "58b35de7c351eac20ab05c226486beb51005631b605652e19395b0ca23887ffe"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
