// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CloudWatch
public enum CloudWatchErrorType: AWSErrorType {
    case concurrentModificationException(message: String?)
    case dashboardInvalidInputError(message: String?)
    case dashboardNotFoundError(message: String?)
    case internalServiceFault(message: String?)
    case invalidFormatFault(message: String?)
    case invalidNextToken(message: String?)
    case invalidParameterCombinationException(message: String?)
    case invalidParameterValueException(message: String?)
    case limitExceededException(message: String?)
    case limitExceededFault(message: String?)
    case missingRequiredParameterException(message: String?)
    case resourceNotFound(message: String?)
    case resourceNotFoundException(message: String?)
}

extension CloudWatchErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "DashboardInvalidInputError":
            self = .dashboardInvalidInputError(message: message)
        case "DashboardNotFoundError":
            self = .dashboardNotFoundError(message: message)
        case "InternalServiceFault":
            self = .internalServiceFault(message: message)
        case "InvalidFormatFault":
            self = .invalidFormatFault(message: message)
        case "InvalidNextToken":
            self = .invalidNextToken(message: message)
        case "InvalidParameterCombinationException":
            self = .invalidParameterCombinationException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "LimitExceededFault":
            self = .limitExceededFault(message: message)
        case "MissingRequiredParameterException":
            self = .missingRequiredParameterException(message: message)
        case "ResourceNotFound":
            self = .resourceNotFound(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}