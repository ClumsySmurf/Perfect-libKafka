// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "ckafka",
    pkgConfig: "rdkafka",
    providers: [
      .Bbew("librdkafka"),
      .Apt("librdkafka-dev")
    ]
  )
