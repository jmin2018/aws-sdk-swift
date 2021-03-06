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
Client object for interacting with AWS CodeStarconnections service.

This AWS CodeStar Connections API Reference provides descriptions and usage examples of the operations and data types for the AWS CodeStar Connections API. You can use the Connections API to work with connections and installations.  Connections are configurations that you use to connect AWS resources to external code repositories. Each connection is a resource that can be given to services such as CodePipeline to connect to a third-party repository such as Bitbucket. For example, you can add the connection in CodePipeline so that it triggers your pipeline when a code change is made to your third-party code repository. Each connection is named and associated with a unique ARN that is used to reference the connection. When you create a connection, the console initiates a third-party connection handshake. Installations are the apps that are used to conduct this handshake. For example, the installation for the Bitbucket provider type is the Bitbucket Cloud app. When you create a connection, you can choose an existing installation or create one. You can work with connections by calling:    CreateConnection, which creates a uniquely named connection that can be referenced by services such as CodePipeline.    DeleteConnection, which deletes the specified connection.    GetConnection, which returns information about the connection, including the connection status.    ListConnections, which lists the connections associated with your account.   For information about how to use AWS CodeStar Connections, see the AWS CodePipeline User Guide.
*/
public struct CodeStarconnections {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the CodeStarconnections client
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
            amzTarget: "com.amazonaws.codestar.connections.CodeStar_connections_20191201",
            service: "codestar-connections",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2019-12-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [CodeStarconnectionsErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a connection that can then be given to other AWS services like CodePipeline so that it can access third-party code repositories. The connection is in pending status until the third-party connection handshake is completed from the console.
    public func createConnection(_ input: CreateConnectionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConnectionOutput> {
        return client.send(operation: "CreateConnection", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  The connection to be deleted.
    public func deleteConnection(_ input: DeleteConnectionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConnectionOutput> {
        return client.send(operation: "DeleteConnection", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the connection ARN and details such as status, owner, and provider type.
    public func getConnection(_ input: GetConnectionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConnectionOutput> {
        return client.send(operation: "GetConnection", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the connections associated with your account.
    public func listConnections(_ input: ListConnectionsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConnectionsOutput> {
        return client.send(operation: "ListConnections", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
