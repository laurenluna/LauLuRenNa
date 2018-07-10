// swift-tools-version:4.1
//
//  Package.swift
//  PerfectLib
//
//  Created by Kyle Jessup on 3/22/16.
//	Copyright (C) 2016 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription

let versions = Version(0,0,0)..<Version(10,0,0)
let urls = [
    "https://github.com/PerfectlySoft/Perfect-HTTPServer.git",      //HTTP服务
    "https://github.com/PerfectlySoft/Perfect-MySQL.git",           //MySQL服务
    "https://github.com/PerfectlySoft/Perfect-Mustache.git"         //Mustache
]

let package = Package(
    name: "PerfectDemoProject",
    targets: [],
    dependencies: urls.map { .Package(url: $0, versions: versions) }
)

#if os(Linux)
let package = Package(
	name: "PerfectLib",
	products: [
		.library(name: "PerfectLib", targets: ["PerfectLib"])
	],
	dependencies: [.package(url: "https://github.com/PerfectlySoft/Perfect-LinuxBridge.git", from: "3.0.0")],
	targets: [
		.target(name: "PerfectLib", dependencies: ["LinuxBridge"])
	]
)
#else
let package = Package(
	name: "PerfectLib",
	products: [
		.library(name: "PerfectLib", targets: ["PerfectLib"])
	],
	dependencies: [],
	targets: [
		.target(name: "PerfectLib", dependencies: [])
	]
)
#endif
