import PackageDescription

let package = Package(
    name: "GMP",
    dependencies: [
        .Package(url: "../CGMP", majorVersion: 1, minor: 2)
    ]
)
