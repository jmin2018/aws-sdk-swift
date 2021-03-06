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

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS ApplicationInsights service.

Amazon CloudWatch Application Insights for .NET and SQL Server  Amazon CloudWatch Application Insights for .NET and SQL Server is a service that helps you detect common problems with your .NET and SQL Server-based applications. It enables you to pinpoint the source of issues in your applications (built with technologies such as Microsoft IIS, .NET, and Microsoft SQL Server), by providing key insights into detected problems. After you onboard your application, CloudWatch Application Insights for .NET and SQL Server identifies, recommends, and sets up metrics and logs. It continuously analyzes and correlates your metrics and logs for unusual behavior to surface actionable problems with your application. For example, if your application is slow and unresponsive and leading to HTTP 500 errors in your Application Load Balancer (ALB), Application Insights informs you that a memory pressure problem with your SQL Server database is occurring. It bases this analysis on impactful metrics and log errors. 
*/
public struct ApplicationInsights {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ApplicationInsights client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? .aws,
            amzTarget: "EC2WindowsBarleyService",
            service: "applicationinsights",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-11-25",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ApplicationInsightsErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Adds an application that is created from a resource group.
    public func createApplication(_ input: CreateApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationResponse> {
        return client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a custom component by grouping similar standalone instances to monitor.
    public func createComponent(_ input: CreateComponentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateComponentResponse> {
        return client.send(operation: "CreateComponent", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds an log pattern to a LogPatternSet.
    public func createLogPattern(_ input: CreateLogPatternRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLogPatternResponse> {
        return client.send(operation: "CreateLogPattern", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the specified application from monitoring. Does not delete the application.
    public func deleteApplication(_ input: DeleteApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationResponse> {
        return client.send(operation: "DeleteApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Ungroups a custom component. When you ungroup custom components, all applicable monitors that are set up for the component are removed and the instances revert to their standalone status.
    public func deleteComponent(_ input: DeleteComponentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteComponentResponse> {
        return client.send(operation: "DeleteComponent", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the specified log pattern from a LogPatternSet.
    public func deleteLogPattern(_ input: DeleteLogPatternRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLogPatternResponse> {
        return client.send(operation: "DeleteLogPattern", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the application.
    public func describeApplication(_ input: DescribeApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationResponse> {
        return client.send(operation: "DescribeApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a component and lists the resources that are grouped together in a component.
    public func describeComponent(_ input: DescribeComponentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComponentResponse> {
        return client.send(operation: "DescribeComponent", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the monitoring configuration of the component.
    public func describeComponentConfiguration(_ input: DescribeComponentConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComponentConfigurationResponse> {
        return client.send(operation: "DescribeComponentConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the recommended monitoring configuration of the component.
    public func describeComponentConfigurationRecommendation(_ input: DescribeComponentConfigurationRecommendationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComponentConfigurationRecommendationResponse> {
        return client.send(operation: "DescribeComponentConfigurationRecommendation", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describe a specific log pattern from a LogPatternSet.
    public func describeLogPattern(_ input: DescribeLogPatternRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogPatternResponse> {
        return client.send(operation: "DescribeLogPattern", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes an anomaly or error with the application.
    public func describeObservation(_ input: DescribeObservationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeObservationResponse> {
        return client.send(operation: "DescribeObservation", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes an application problem.
    public func describeProblem(_ input: DescribeProblemRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProblemResponse> {
        return client.send(operation: "DescribeProblem", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the anomalies or errors associated with the problem.
    public func describeProblemObservations(_ input: DescribeProblemObservationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProblemObservationsResponse> {
        return client.send(operation: "DescribeProblemObservations", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the IDs of the applications that you are monitoring. 
    public func listApplications(_ input: ListApplicationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationsResponse> {
        return client.send(operation: "ListApplications", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the auto-grouped, standalone, and custom components of the application.
    public func listComponents(_ input: ListComponentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListComponentsResponse> {
        return client.send(operation: "ListComponents", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights. Examples of events represented are:    INFO: creating a new alarm or updating an alarm threshold.   WARN: alarm not created due to insufficient data points used to predict thresholds.   ERROR: alarm not created due to permission errors or exceeding quotas.   
    public func listConfigurationHistory(_ input: ListConfigurationHistoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConfigurationHistoryResponse> {
        return client.send(operation: "ListConfigurationHistory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the log pattern sets in the specific application.
    public func listLogPatternSets(_ input: ListLogPatternSetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLogPatternSetsResponse> {
        return client.send(operation: "ListLogPatternSets", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the log patterns in the specific log LogPatternSet.
    public func listLogPatterns(_ input: ListLogPatternsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLogPatternsResponse> {
        return client.send(operation: "ListLogPatterns", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the problems with your application.
    public func listProblems(_ input: ListProblemsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProblemsResponse> {
        return client.send(operation: "ListProblems", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieve a list of the tags (keys and values) that are associated with a specified application. A tag is a label that you optionally define and associate with an application. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Add one or more tags (keys and values) to a specified application. A tag is a label that you optionally define and associate with an application. Tags can help you categorize and manage application in different ways, such as by purpose, owner, environment, or other criteria.  Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Remove one or more tags (keys and values) from a specified application.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the application.
    public func updateApplication(_ input: UpdateApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApplicationResponse> {
        return client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the custom component name and/or the list of resources that make up the component.
    public func updateComponent(_ input: UpdateComponentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateComponentResponse> {
        return client.send(operation: "UpdateComponent", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the monitoring configurations for the component. The configuration input parameter is an escaped JSON of the configuration and should match the schema of what is returned by DescribeComponentConfigurationRecommendation. 
    public func updateComponentConfiguration(_ input: UpdateComponentConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateComponentConfigurationResponse> {
        return client.send(operation: "UpdateComponentConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds a log pattern to a LogPatternSet.
    public func updateLogPattern(_ input: UpdateLogPatternRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLogPatternResponse> {
        return client.send(operation: "UpdateLogPattern", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
