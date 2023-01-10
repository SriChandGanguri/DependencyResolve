// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "DependencyResolve",
    products: [
        .library(
            name: "DependencyResolve",
            targets: ["DependencyResolve"]),
    ],
    dependencies: [
         .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "8.10.0"),
    ],
    targets: [
        .target(
            name: "DependencyResolve",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
            ]),
        .testTarget(
            name: "DependencyResolveTests",
            dependencies: ["DependencyResolve"]),
    ]
)
