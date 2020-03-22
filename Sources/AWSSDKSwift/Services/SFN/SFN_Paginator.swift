// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension SFN {

    ///  Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the timeStamp of the events. Use the reverseOrder parameter to get the latest events first. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error. This API action is not supported by EXPRESS state machines.
    public func getExecutionHistoryPaginator(_ input: GetExecutionHistoryInput, onPage: @escaping (GetExecutionHistoryOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getExecutionHistory, tokenKey: \GetExecutionHistoryOutput.nextToken, onPage: onPage)
    }

    ///  Lists the existing activities. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 
    public func listActivitiesPaginator(_ input: ListActivitiesInput, onPage: @escaping (ListActivitiesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listActivities, tokenKey: \ListActivitiesOutput.nextToken, onPage: onPage)
    }

    ///  Lists the executions of a state machine that meet the filtering criteria. Results are sorted by time, with the most recent execution first. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.
    public func listExecutionsPaginator(_ input: ListExecutionsInput, onPage: @escaping (ListExecutionsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listExecutions, tokenKey: \ListExecutionsOutput.nextToken, onPage: onPage)
    }

    ///  Lists the existing state machines. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 
    public func listStateMachinesPaginator(_ input: ListStateMachinesInput, onPage: @escaping (ListStateMachinesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listStateMachines, tokenKey: \ListStateMachinesOutput.nextToken, onPage: onPage)
    }

}

extension SFN.GetExecutionHistoryInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SFN.GetExecutionHistoryInput {
        return .init(
            executionArn: self.executionArn, 
            maxResults: self.maxResults, 
            nextToken: token, 
            reverseOrder: self.reverseOrder
        )

    }
}

extension SFN.ListActivitiesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SFN.ListActivitiesInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension SFN.ListExecutionsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SFN.ListExecutionsInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            stateMachineArn: self.stateMachineArn, 
            statusFilter: self.statusFilter
        )

    }
}

extension SFN.ListStateMachinesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SFN.ListStateMachinesInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

