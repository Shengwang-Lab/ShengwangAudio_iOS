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
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST2/AgoraRtcKit.xcframework.zip",
            checksum: "9c8584b1097f7a926885689673edcc033896ddbd52c12c5259d17952c685b0a0"
        ),
        .binaryTarget(
            name: "Agorafdkaac",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST2/Agorafdkaac.xcframework.zip",
            checksum: "d821a3433f84ffc8de09c60f0d632203e09436a1e240afe89fb771906b2ef616"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST2/Agoraffmpeg.xcframework.zip",
            checksum: "76c97d82ed71152d82d205106b3fa38ce757fac5c5cf91bca7b34c8c7c045a95"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST2/AgoraSoundTouch.xcframework.zip",
            checksum: "7cedbe00f27cf8a24aefe16209335d4d9f11458d4fe478c7b0b283aa499894c9"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST2/AgoraAiNoiseSuppressionExtension.xcframework.zip",
            checksum: "28a6949f1e6bbe164d67bd1ef8bdd730e17009e397e850750c8980860ad2a21e"
        ),
        .binaryTarget(
            name: "AgoraAiNoiseSuppressionLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST2/AgoraAiNoiseSuppressionLLExtension.xcframework.zip",
            checksum: "a82bbbadbddd351f04c4ecaaa6b6e9d353d48ee2d3ec96b73b279ced4597c4c1"
        ),
        .binaryTarget(
            name: "AgoraAudioBeautyExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST2/AgoraAudioBeautyExtension.xcframework.zip",
            checksum: "2270f79265947c65b569cb15e5f182a89dff7268019b32b1bfd45ec24c8aad93"
        ),
        .binaryTarget(
            name: "AgoraSpatialAudioExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST2/AgoraSpatialAudioExtension.xcframework.zip",
            checksum: "b78411e87d9641e3331535c0ac468e5ddff8a8873decf471355d8d9e37345bd3"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST2/AgoraAiEchoCancellationExtension.xcframework.zip",
            checksum: "5452bdcc3aea9dfa1dadaf93b915915f4071f64155d1765bdae312b736327999"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationLLExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST2/AgoraAiEchoCancellationLLExtension.xcframework.zip",
            checksum: "d86a398b19dcf1a4490da16941d660a4d9c619997e8d722a9b60c28253cc8413"
        ),
        .binaryTarget(
            name: "AgoraLipSyncExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangAudio_iOS/4.6.0.TEST2/AgoraLipSyncExtension.xcframework.zip",
            checksum: "25cca4b5e85653120c4900dd3b89ff678d163cf7a717855ca1a88313642d2d72"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
