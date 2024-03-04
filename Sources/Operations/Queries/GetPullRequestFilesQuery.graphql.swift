// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public final class GetPullRequestFilesQuery: GraphQLQuery {
  public static let operationName: String = "GetPullRequestFiles"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetPullRequestFiles($owner: String!, $repo: String!, $pullReq: Int!, $endCursor: String) { repository(owner: $owner, name: $repo) { __typename pullRequest(number: $pullReq) { __typename baseRef { __typename name } ... on PullRequest { files(first: 100, after: $endCursor) { __typename pageInfo { __typename hasNextPage endCursor } nodes { __typename ...PRChangedFile } } } } } ...RateLimitWithoutTypeCondition }"#,
      fragments: [PRChangedFile.self, RateLimitWithoutTypeCondition.self]
    ))

  public var owner: String
  public var repo: String
  public var pullReq: Int
  public var endCursor: GraphQLNullable<String>

  public init(
    owner: String,
    repo: String,
    pullReq: Int,
    endCursor: GraphQLNullable<String>
  ) {
    self.owner = owner
    self.repo = repo
    self.pullReq = pullReq
    self.endCursor = endCursor
  }

  public var __variables: Variables? { [
    "owner": owner,
    "repo": repo,
    "pullReq": pullReq,
    "endCursor": endCursor
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
          ObjectIdentifier(GetPullRequestFilesQuery.Data.self),
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
        .field("pullRequest", PullRequest?.self, arguments: ["number": .variable("pullReq")]),
      ] }

      /// Returns a single pull request from the current repository by number.
      public var pullRequest: PullRequest? { __data["pullRequest"] }

      public init(
        pullRequest: PullRequest? = nil
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": TDGitGraphQL.Objects.Repository.typename,
            "pullRequest": pullRequest._fieldData,
          ],
          fulfilledFragments: [
            ObjectIdentifier(GetPullRequestFilesQuery.Data.Repository.self)
          ]
        ))
      }

      /// Repository.PullRequest
      ///
      /// Parent Type: `PullRequest`
      public struct PullRequest: TDGitGraphQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.PullRequest }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("baseRef", BaseRef?.self),
          .field("files", Files?.self, arguments: [
            "first": 100,
            "after": .variable("endCursor")
          ]),
        ] }

        /// Identifies the base Ref associated with the pull request.
        public var baseRef: BaseRef? { __data["baseRef"] }
        /// Lists the files changed within this pull request.
        public var files: Files? { __data["files"] }

        public init(
          baseRef: BaseRef? = nil,
          files: Files? = nil
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": TDGitGraphQL.Objects.PullRequest.typename,
              "baseRef": baseRef._fieldData,
              "files": files._fieldData,
            ],
            fulfilledFragments: [
              ObjectIdentifier(GetPullRequestFilesQuery.Data.Repository.PullRequest.self)
            ]
          ))
        }

        /// Repository.PullRequest.BaseRef
        ///
        /// Parent Type: `Ref`
        public struct BaseRef: TDGitGraphQL.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Ref }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String.self),
          ] }

          /// The ref name.
          public var name: String { __data["name"] }

          public init(
            name: String
          ) {
            self.init(_dataDict: DataDict(
              data: [
                "__typename": TDGitGraphQL.Objects.Ref.typename,
                "name": name,
              ],
              fulfilledFragments: [
                ObjectIdentifier(GetPullRequestFilesQuery.Data.Repository.PullRequest.BaseRef.self)
              ]
            ))
          }
        }

        /// Repository.PullRequest.Files
        ///
        /// Parent Type: `PullRequestChangedFileConnection`
        public struct Files: TDGitGraphQL.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.PullRequestChangedFileConnection }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("pageInfo", PageInfo.self),
            .field("nodes", [Node?]?.self),
          ] }

          /// Information to aid in pagination.
          public var pageInfo: PageInfo { __data["pageInfo"] }
          /// A list of nodes.
          public var nodes: [Node?]? { __data["nodes"] }

          public init(
            pageInfo: PageInfo,
            nodes: [Node?]? = nil
          ) {
            self.init(_dataDict: DataDict(
              data: [
                "__typename": TDGitGraphQL.Objects.PullRequestChangedFileConnection.typename,
                "pageInfo": pageInfo._fieldData,
                "nodes": nodes._fieldData,
              ],
              fulfilledFragments: [
                ObjectIdentifier(GetPullRequestFilesQuery.Data.Repository.PullRequest.Files.self)
              ]
            ))
          }

          /// Repository.PullRequest.Files.PageInfo
          ///
          /// Parent Type: `PageInfo`
          public struct PageInfo: TDGitGraphQL.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.PageInfo }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("hasNextPage", Bool.self),
              .field("endCursor", String?.self),
            ] }

            /// When paginating forwards, are there more items?
            public var hasNextPage: Bool { __data["hasNextPage"] }
            /// When paginating forwards, the cursor to continue.
            public var endCursor: String? { __data["endCursor"] }

            public init(
              hasNextPage: Bool,
              endCursor: String? = nil
            ) {
              self.init(_dataDict: DataDict(
                data: [
                  "__typename": TDGitGraphQL.Objects.PageInfo.typename,
                  "hasNextPage": hasNextPage,
                  "endCursor": endCursor,
                ],
                fulfilledFragments: [
                  ObjectIdentifier(GetPullRequestFilesQuery.Data.Repository.PullRequest.Files.PageInfo.self)
                ]
              ))
            }
          }

          /// Repository.PullRequest.Files.Node
          ///
          /// Parent Type: `PullRequestChangedFile`
          public struct Node: TDGitGraphQL.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.PullRequestChangedFile }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .fragment(PRChangedFile.self),
            ] }

            /// The number of additions to the file.
            public var additions: Int { __data["additions"] }
            /// How the file was changed in this PullRequest
            public var changeType: GraphQLEnum<TDGitGraphQL.PatchStatus> { __data["changeType"] }
            /// The number of deletions to the file.
            public var deletions: Int { __data["deletions"] }
            /// The path of the file.
            public var path: String { __data["path"] }
            /// The state of the file for the viewer.
            public var viewerViewedState: GraphQLEnum<TDGitGraphQL.FileViewedState> { __data["viewerViewedState"] }

            public struct Fragments: FragmentContainer {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public var pRChangedFile: PRChangedFile { _toFragment() }
            }

            public init(
              additions: Int,
              changeType: GraphQLEnum<TDGitGraphQL.PatchStatus>,
              deletions: Int,
              path: String,
              viewerViewedState: GraphQLEnum<TDGitGraphQL.FileViewedState>
            ) {
              self.init(_dataDict: DataDict(
                data: [
                  "__typename": TDGitGraphQL.Objects.PullRequestChangedFile.typename,
                  "additions": additions,
                  "changeType": changeType,
                  "deletions": deletions,
                  "path": path,
                  "viewerViewedState": viewerViewedState,
                ],
                fulfilledFragments: [
                  ObjectIdentifier(GetPullRequestFilesQuery.Data.Repository.PullRequest.Files.Node.self),
                  ObjectIdentifier(PRChangedFile.self)
                ]
              ))
            }
          }
        }
      }
    }
  }
}
