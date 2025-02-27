//
//  CallInformation.swift
//  R.swift
//
//  Created by Tom Lokhorst on 2017-04-22.
//  From: https://github.com/mac-cain13/R.swift
//  License: MIT License
//

import Foundation
import XcodeEdit

public struct CallInformation {
  let outputURL: URL
  let uiTestOutputURL: URL?
  let rswiftIgnoreURL: URL

  let accessLevel: AccessLevel
  let imports: [Module]

  let xcodeprojURL: URL
  let targetName: String
  let bundleIdentifier: String
  let productModuleName: String

  let scriptInputFiles: [String]
  let scriptOutputFiles: [String]
  let lastRunURL: URL

  let buildProductsDirURL: URL
  let developerDirURL: URL
  let sourceRootURL: URL
  let sdkRootURL: URL
  let platformURL: URL

  public init(
    outputURL: URL,
    uiTestOutputURL: URL?,
    rswiftIgnoreURL: URL,

    accessLevel: AccessLevel,
    imports: [Module],

    xcodeprojURL: URL,
    targetName: String,
    bundleIdentifier: String,
    productModuleName: String,

    scriptInputFiles: [String],
    scriptOutputFiles: [String],
    lastRunURL: URL,

    buildProductsDirURL: URL,
    developerDirURL: URL,
    sourceRootURL: URL,
    sdkRootURL: URL,
    platformURL: URL
  ) {
    self.outputURL = outputURL
    self.uiTestOutputURL = uiTestOutputURL
    self.rswiftIgnoreURL = rswiftIgnoreURL

    self.accessLevel = accessLevel
    self.imports = imports

    self.xcodeprojURL = xcodeprojURL
    self.targetName = targetName
    self.bundleIdentifier = bundleIdentifier
    self.productModuleName = productModuleName

    self.scriptInputFiles = scriptInputFiles
    self.scriptOutputFiles = scriptOutputFiles
    self.lastRunURL = lastRunURL

    self.buildProductsDirURL = buildProductsDirURL
    self.developerDirURL = developerDirURL
    self.sourceRootURL = sourceRootURL
    self.sdkRootURL = sdkRootURL
    self.platformURL = platformURL
  }


  func urlForSourceTreeFolder(_ sourceTreeFolder: SourceTreeFolder) -> URL {
    switch sourceTreeFolder {
    case .buildProductsDir:
      return buildProductsDirURL
    case .developerDir:
      return developerDirURL
    case .sdkRoot:
      return sdkRootURL
    case .sourceRoot:
      return sourceRootURL
    case .platformDir:
      return platformURL
    }
  }
}
