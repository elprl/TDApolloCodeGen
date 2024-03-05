// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public final class GetRecentPullRequestsQuery: GraphQLQuery {
  public static let operationName: String = "GetRecentPullRequests"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetRecentPullRequests($owner: String!, $repo: String!) { repository(owner: $owner, name: $repo) { __typename pullRequests(first: 100, states: [OPEN, CLOSED, MERGED]) { __typename nodes { __typename ...PullRequestDetails } } } ...RateLimitWithoutTypeCondition }"#,
      fragments: [PullRequestDetails.self, RateLimitWithoutTypeCondition.self]
    ))

  public var owner: String
  public var repo: String

  public init(
    owner: String,
    repo: String
  ) {
    self.owner = owner
    self.repo = repo
  }

  public var __variables: Variables? { [
    "owner": owner,
    "repo": repo
  ] }

  public struct Data: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("repository", Repository?.self, arguments: [
        "owner": .variable("owner"),
        "name": .variable("repo")
      ]),
      .fragment(RateLimitWithoutTypeCondition.self),
    ] }

    /// Lookup a given repository by the owner and repository name.
    public var repository: Repository? { __data["repository"] }
    /// The client's rate limit information.
    public var rateLimit: RateLimitWithoutTypeCondition.RateLimit? { __data["rateLimit"] }

    public struct Fragments: FragmentContainer {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public var rateLimitWithoutTypeCondition: RateLimitWithoutTypeCondition { _toFragment() }
    }

    public init(
      repository: Repository? = nil,
      rateLimit: RateLimitWithoutTypeCondition.RateLimit? = nil
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": TDGitGraphQL.Objects.Query.typename,
          "repository": repository._fieldData,
          "rateLimit": rateLimit._fieldData,
        ],
        fulfilledFragments: [
          ObjectIdentifier(GetRecentPullRequestsQuery.Data.self),
          ObjectIdentifier(RateLimitWithoutTypeCondition.self)
        ]
      ))
    }

    /// Repository
    ///
    /// Parent Type: `Repository`
    public struct Repository: TDGitGraphQL.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Repository }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("pullRequests", PullRequests.self, arguments: [
          "first": 100,
          "states": ["OPEN", "CLOSED", "MERGED"]
        ]),
      ] }

      /// A list of pull requests that have been opened in the repository.
      public var pullRequests: PullRequests { __data["pullRequests"] }

      public init(
        pullRequests: PullRequests
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": TDGitGraphQL.Objects.Repository.typename,
            "pullRequests": pullRequests._fieldData,
          ],
          fulfilledFragments: [
            ObjectIdentifier(GetRecentPullRequestsQuery.Data.Repository.self)
          ]
        ))
      }

      /// Repository.PullRequests
      ///
      /// Parent Type: `PullRequestConnection`
      public struct PullRequests: TDGitGraphQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.PullRequestConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("nodes", [Node?]?.self),
        ] }

        /// A list of nodes.
        public var nodes: [Node?]? { __data["nodes"] }

        public init(
          nodes: [Node?]? = nil
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": TDGitGraphQL.Objects.PullRequestConnection.typename,
              "nodes": nodes._fieldData,
            ],
            fulfilledFragments: [
              ObjectIdentifier(GetRecentPullRequestsQuery.Data.Repository.PullRequests.self)
            ]
          ))
        }

        /// Repository.PullRequests.Node
        ///
        /// Parent Type: `PullRequest`
        public struct Node: TDGitGraphQL.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.PullRequest }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .fragment(PullRequestDetails.self),
          ] }

          /// Identifies the pull request title.
          public var title: String { __data["title"] }
          /// Identifies the pull request number.
          public var number: Int { __data["number"] }
          /// Identifies the date and time when the object was created.
          public var createdAt: TDGitGraphQL.DateTime { __data["createdAt"] }
          /// The HTTP URL for this pull request.
          public var url: TDGitGraphQL.URI { __data["url"] }
          /// The body rendered to text.
          public var bodyText: String { __data["bodyText"] }
          /// Identifies the state of the pull request.
          public var state: GraphQLEnum<TDGitGraphQL.PullRequestState> { __data["state"] }
          /// Identifies the name of the base Ref associated with the pull request, even if the ref has been deleted.
          public var baseRefName: String { __data["baseRefName"] }
          /// Identifies the name of the head Ref associated with the pull request, even if the ref has been deleted.
          public var headRefName: String { __data["headRefName"] }
          /// The actor who authored the comment.
          public var author: PullRequestDetails.Author? { __data["author"] }
          /// The number of changed files in this pull request.
          public var changedFiles: Int { __data["changedFiles"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public var pullRequestDetails: PullRequestDetails { _toFragment() }
          }

          public init(
            title: String,
            number: Int,
            createdAt: TDGitGraphQL.DateTime,
            url: TDGitGraphQL.URI,
            bodyText: String,
            state: GraphQLEnum<TDGitGraphQL.PullRequestState>,
            baseRefName: String,
            headRefName: String,
            author: PullRequestDetails.Author? = nil,
            changedFiles: Int
          ) {
            self.init(_dataDict: DataDict(
              data: [
                "__typename": TDGitGraphQL.Objects.PullRequest.typename,
                "title": title,
                "number": number,
                "createdAt": createdAt,
                "url": url,
                "bodyText": bodyText,
                "state": state,
                "baseRefName": baseRefName,
                "headRefName": headRefName,
                "author": author._fieldData,
                "changedFiles": changedFiles,
              ],
              fulfilledFragments: [
                ObjectIdentifier(GetRecentPullRequestsQuery.Data.Repository.PullRequests.Node.self),
                ObjectIdentifier(PullRequestDetails.self)
              ]
            ))
          }
        }
      }
    }
  }
}
