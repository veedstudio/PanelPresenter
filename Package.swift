// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PanelPresenter",
	platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PanelPresenter",
            targets: ["PanelPresenter"]),
    ],
    dependencies: [
		.package(url: "https://github.com/veedstudio/ConstraintBuilder", "1.0.4"..<"2.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PanelPresenter",
            dependencies: ["ConstraintBuilder"]),
        .testTarget(
            name: "PanelPresenterTests",
            dependencies: ["PanelPresenter"]),
    ]
)
