// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public final class AllBranchesQuery: GraphQLQuery {
  public static let operationName: String = "AllBranches"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query AllBranches($owner: String!, $repo: String!, $endCursor: String) { repository(owner: $owner, name: $repo) { __typename refs( first: 100 refPrefix: "refs/heads/" after: $endCursor orderBy: {field: TAG_COMMIT_DATE, direction: ASC} ) { __typename ...Branches pageInfo { __typename endCursor hasNextPage } } } ...RateLimitWithoutTypeCondition }"#,
      fragments: [Branches.self, Branch.self, RateLimitWithoutTypeCondition.self]
    ))

  public var owner: String
  public var repo: String
  public var endCursor: GraphQLNullable<String>

  public init(
    owner: String,
    repo: String,
    endCursor: GraphQLNullable<String>
  ) {
    self.owner = owner
    self.repo = repo
    self.endCursor = endCursor
  }

  public var __variables: Variables? { [
    "owner": owner,
    "repo": repo,
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
          ObjectIdentifier(AllBranchesQuery.Data.self),
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
        .field("refs", Refs?.self, arguments: [
          "first": 100,
          "refPrefix": "refs/heads/",
          "after": .variable("endCursor"),
          "orderBy": [
            "field": "TAG_COMMIT_DATE",
            "direction": "ASC"
          ]
        ]),
      ] }

      /// Fetch a list of refs from the repository
      public var refs: Refs? { __data["refs"] }

      public init(
        refs: Refs? = nil
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": TDGitGraphQL.Objects.Repository.typename,
            "refs": refs._fieldData,
          ],
          fulfilledFragments: [
            ObjectIdentifier(AllBranchesQuery.Data.Repository.self)
          ]
        ))
      }

      /// Repository.Refs
      ///
      /// Parent Type: `RefConnection`
      public struct Refs: TDGitGraphQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.RefConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("pageInfo", PageInfo.self),
          .fragment(Branches.self),
        ] }

        /// Information to aid in pagination.
        public var pageInfo: PageInfo { __data["pageInfo"] }
        /// Identifies the total count of items in the connection.
        public var totalCount: Int { __data["totalCount"] }
        /// A list of edges.
        public var edges: [Branches.Edge?]? { __data["edges"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var branches: Branches { _toFragment() }
        }

        public init(
          pageInfo: PageInfo,
          totalCount: Int,
          edges: [Branches.Edge?]? = nil
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": TDGitGraphQL.Objects.RefConnection.typename,
              "pageInfo": pageInfo._fieldData,
              "totalCount": totalCount,
              "edges": edges._fieldData,
            ],
            fulfilledFragments: [
              ObjectIdentifier(AllBranchesQuery.Data.Repository.Refs.self),
              ObjectIdentifier(Branches.self)
            ]
          ))
        }

        /// Repository.Refs.PageInfo
        ///
        /// Parent Type: `PageInfo`
        public struct PageInfo: TDGitGraphQL.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.PageInfo }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("endCursor", String?.self),
            .field("hasNextPage", Bool.self),
          ] }

          /// When paginating forwards, the cursor to continue.
          public var endCursor: String? { __data["endCursor"] }
          /// When paginating forwards, are there more items?
          public var hasNextPage: Bool { __data["hasNextPage"] }

          public init(
            endCursor: String? = nil,
            hasNextPage: Bool
          ) {
            self.init(_dataDict: DataDict(
              data: [
                "__typename": TDGitGraphQL.Objects.PageInfo.typename,
                "endCursor": endCursor,
                "hasNextPage": hasNextPage,
              ],
              fulfilledFragments: [
                ObjectIdentifier(AllBranchesQuery.Data.Repository.Refs.PageInfo.self)
              ]
            ))
          }
        }
      }
    }
  }
}
