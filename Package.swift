import PackageDescription

let package = Package(
    name: "GMP",
    dependencies: [
        .Package(url: "https://github.com/tinysun212/CGMP.git", majorVersion: 1, minor: 2)
    ]
)
