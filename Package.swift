// swift-tools-version:5.3
// 重要: 元Podspecでは iOS 7.0 を指定していましたが、SwiftPM は実質的に iOS 8 以降、近年は 9+ が現実的ターゲットなため 9 を最低バージョンに設定しています。
import PackageDescription

let package = Package(
    name: "CCBottomRefreshControl",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "CCBottomRefreshControl", targets: ["CCBottomRefreshControl"])
    ],
    targets: [
        .target(
            name: "CCBottomRefreshControl",
            path: "Sources/CCBottomRefreshControl",
            publicHeadersPath: "include",
            cSettings: [
                // UIKit 利用のため特別なフラグは不要
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
