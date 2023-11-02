// swift-tools-version:5.7

import PackageDescription

let package = Package(
  name: "TDGitGraphQL",
  platforms: [
    .iOS(.v16),
    .macOS(.v10_14),
    .tvOS(.v12),
    .watchOS(.v5),
  ],
  products: [
    .library(name: "TDGitGraphQL", targets: ["TDGitGraphQL"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apollographql/apollo-ios.git", from: "1.0.0"),
  ],
  targets: [
    .target(
      name: "TDGitGraphQL",
      dependencies: [
        .product(name: "ApolloAPI", package: "apollo-ios"),
      ],
      path: "./generated/schema/Sources"
    ),
  ]
)
