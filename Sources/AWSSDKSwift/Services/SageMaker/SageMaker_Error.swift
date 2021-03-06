//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SageMaker
public enum SageMakerErrorType: AWSErrorType {
    case conflictException(message: String?)
    case resourceInUse(message: String?)
    case resourceLimitExceeded(message: String?)
    case resourceNotFound(message: String?)
}

extension SageMakerErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConflictException":
            self = .conflictException(message: message)
        case "ResourceInUse":
            self = .resourceInUse(message: message)
        case "ResourceLimitExceeded":
            self = .resourceLimitExceeded(message: message)
        case "ResourceNotFound":
            self = .resourceNotFound(message: message)
        default:
            return nil
        }
    }
}

extension SageMakerErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .resourceInUse(let message):
            return "ResourceInUse: \(message ?? "")"
        case .resourceLimitExceeded(let message):
            return "ResourceLimitExceeded: \(message ?? "")"
        case .resourceNotFound(let message):
            return "ResourceNotFound: \(message ?? "")"
        }
    }
}
