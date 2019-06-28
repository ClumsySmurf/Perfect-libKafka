// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "ckafka",
    products: [
      .library(name: "ckafka", targets: ["ckafka"]),
    ],
    targets: [
      .systemLibrary(
        name: "ckafka",
        pkgConfig: "rdkafka",
        providers: [
        .brew(["librdkafka"]),
        .apt(["librdkafka-dev"])
        ]
      ),
      .target(
        name: "Perfect-libKafka",
        dependencies: (["ckafka"])
      )
    ]
  )
