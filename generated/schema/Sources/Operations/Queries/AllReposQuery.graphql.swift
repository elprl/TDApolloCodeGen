// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public final class AllReposQuery: GraphQLQuery {
  public static let operationName: String = "AllRepos"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query AllRepos($endCursor: String) { viewer { __typename repositories( first: 100 after: $endCursor affiliations: [OWNER, ORGANIZATION_MEMBER, COLLABORATOR] ownerAffiliations: [OWNER, ORGANIZATION_MEMBER, COLLABORATOR] orderBy: {field: PUSHED_AT, direction: DESC} ) { __typename edges { __typename node { __typename ...RepositoryDetails } } pageInfo { __typename hasNextPage endCursor } } } ...RateLimitWithoutTypeCondition }"#,
      fragments: [RepositoryDetails.self, RateLimitWithoutTypeCondition.self]
    ))

  public var endCursor: GraphQLNullable<String>

  public init(endCursor: GraphQLNullable<String>) {
    self.endCursor = endCursor
  }

  public var __variables: Variables? { ["endCursor": endCursor] }

  public struct Data: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("viewer", Viewer.self),
      .fragment(RateLimitWithoutTypeCondition.self),
    ] }

    /// The currently authenticated user.
    public var viewer: Viewer { __data["viewer"] }
    /// The client's rate limit information.
    public var rateLimit: RateLimitWithoutTypeCondition.RateLimit? { __data["rateLimit"] }

    public struct Fragments: FragmentContainer {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public var rateLimitWithoutTypeCondition: RateLimitWithoutTypeCondition { _toFragment() }
    }

    public init(
      viewer: Viewer,
      rateLimit: RateLimitWithoutTypeCondition.RateLimit? = nil
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": TDGitGraphQL.Objects.Query.typename,
          "viewer": viewer._fieldData,
          "rateLimit": rateLimit._fieldData,
        ],
        fulfilledFragments: [
          ObjectIdentifier(AllReposQuery.Data.self),
          ObjectIdentifier(RateLimitWithoutTypeCondition.self)
        ]
      ))
    }

    /// Viewer
    ///
    /// Parent Type: `User`
    public struct Viewer: TDGitGraphQL.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("repositories", Repositories.self, arguments: [
          "first": 100,
          "after": .variable("endCursor"),
          "affiliations": ["OWNER", "ORGANIZATION_MEMBER", "COLLABORATOR"],
          "ownerAffiliations": ["OWNER", "ORGANIZATION_MEMBER", "COLLABORATOR"],
          "orderBy": [
            "field": "PUSHED_AT",
            "direction": "DESC"
          ]
        ]),
      ] }

      /// A list of repositories that the user owns.
      public var repositories: Repositories { __data["repositories"] }

      public init(
        repositories: Repositories
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": TDGitGraphQL.Objects.User.typename,
            "repositories": repositories._fieldData,
          ],
          fulfilledFragments: [
            ObjectIdentifier(AllReposQuery.Data.Viewer.self)
          ]
        ))
      }

      /// Viewer.Repositories
      ///
      /// Parent Type: `RepositoryConnection`
      public struct Repositories: TDGitGraphQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.RepositoryConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("edges", [Edge?]?.self),
          .field("pageInfo", PageInfo.self),
        ] }

        /// A list of edges.
        public var edges: [Edge?]? { __data["edges"] }
        /// Information to aid in pagination.
        public var pageInfo: PageInfo { __data["pageInfo"] }

        public init(
          edges: [Edge?]? = nil,
          pageInfo: PageInfo
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": TDGitGraphQL.Objects.RepositoryConnection.typename,
              "edges": edges._fieldData,
              "pageInfo": pageInfo._fieldData,
            ],
            fulfilledFragments: [
              ObjectIdentifier(AllReposQuery.Data.Viewer.Repositories.self)
            ]
          ))
        }

        /// Viewer.Repositories.Edge
        ///
        /// Parent Type: `RepositoryEdge`
        public struct Edge: TDGitGraphQL.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.RepositoryEdge }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("node", Node?.self),
          ] }

          /// The item at the end of the edge.
          public var node: Node? { __data["node"] }

          public init(
            node: Node? = nil
          ) {
            self.init(_dataDict: DataDict(
              data: [
                "__typename": TDGitGraphQL.Objects.RepositoryEdge.typename,
                "node": node._fieldData,
              ],
              fulfilledFragments: [
                ObjectIdentifier(AllReposQuery.Data.Viewer.Repositories.Edge.self)
              ]
            ))
          }

          /// Viewer.Repositories.Edge.Node
          ///
          /// Parent Type: `Repository`
          public struct Node: TDGitGraphQL.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Repository }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .fragment(RepositoryDetails.self),
            ] }

            public var id: TDGitGraphQL.ID { __data["id"] }
            /// The name of the repository.
            public var name: String { __data["name"] }
            /// The User owner of the repository.
            public var owner: RepositoryDetails.Owner { __data["owner"] }
            /// A list of users who have starred this starrable.
            public var stargazers: RepositoryDetails.Stargazers { __data["stargazers"] }
            /// A list of pull requests that have been opened in the repository.
            public var pullRequests: RepositoryDetails.PullRequests { __data["pullRequests"] }
            /// The HTTP URL for this repository
            public var url: TDGitGraphQL.URI { __data["url"] }
            /// Identifies the date and time when the object was last updated.
            public var updatedAt: TDGitGraphQL.DateTime { __data["updatedAt"] }
            /// Identifies the date and time when the repository was last pushed to.
            public var pushedAt: TDGitGraphQL.DateTime? { __data["pushedAt"] }
            /// The primary language of the repository's code.
            public var primaryLanguage: RepositoryDetails.PrimaryLanguage? { __data["primaryLanguage"] }
            /// Identifies if the repository is private or internal.
            public var isPrivate: Bool { __data["isPrivate"] }
            /// The Ref associated with the repository's default branch.
            public var defaultBranchRef: RepositoryDetails.DefaultBranchRef? { __data["defaultBranchRef"] }
            /// The description of the repository.
            public var description: String? { __data["description"] }

            public struct Fragments: FragmentContainer {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public var repositoryDetails: RepositoryDetails { _toFragment() }
            }

            public init(
              id: TDGitGraphQL.ID,
              name: String,
              owner: RepositoryDetails.Owner,
              stargazers: RepositoryDetails.Stargazers,
              pullRequests: RepositoryDetails.PullRequests,
              url: TDGitGraphQL.URI,
              updatedAt: TDGitGraphQL.DateTime,
              pushedAt: TDGitGraphQL.DateTime? = nil,
              primaryLanguage: RepositoryDetails.PrimaryLanguage? = nil,
              isPrivate: Bool,
              defaultBranchRef: RepositoryDetails.DefaultBranchRef? = nil,
              description: String? = nil
            ) {
              self.init(_dataDict: DataDict(
                data: [
                  "__typename": TDGitGraphQL.Objects.Repository.typename,
                  "id": id,
                  "name": name,
                  "owner": owner._fieldData,
                  "stargazers": stargazers._fieldData,
                  "pullRequests": pullRequests._fieldData,
                  "url": url,
                  "updatedAt": updatedAt,
                  "pushedAt": pushedAt,
                  "primaryLanguage": primaryLanguage._fieldData,
                  "isPrivate": isPrivate,
                  "defaultBranchRef": defaultBranchRef._fieldData,
                  "description": description,
                ],
                fulfilledFragments: [
                  ObjectIdentifier(AllReposQuery.Data.Viewer.Repositories.Edge.Node.self),
                  ObjectIdentifier(RepositoryDetails.self)
                ]
              ))
            }
          }
        }

        /// Viewer.Repositories.PageInfo
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
                ObjectIdentifier(AllReposQuery.Data.Viewer.Repositories.PageInfo.self)
              ]
            ))
          }
        }
      }
    }
  }
}
