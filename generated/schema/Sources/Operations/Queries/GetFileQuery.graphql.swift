// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public final class GetFileQuery: GraphQLQuery {
  public static let operationName: String = "GetFile"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetFile($owner: String!, $repo: String!, $commitPath: String!) { repository(owner: $owner, name: $repo) { __typename ... on Repository { object(expression: $commitPath) { __typename ... on Blob { ...FileContent } } } } ...RateLimitWithoutTypeCondition }"#,
      fragments: [FileContent.self, RateLimitWithoutTypeCondition.self]
    ))

  public var owner: String
  public var repo: String
  public var commitPath: String

  public init(
    owner: String,
    repo: String,
    commitPath: String
  ) {
    self.owner = owner
    self.repo = repo
    self.commitPath = commitPath
  }

  public var __variables: Variables? { [
    "owner": owner,
    "repo": repo,
    "commitPath": commitPath
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
          ObjectIdentifier(GetFileQuery.Data.self),
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
        .field("object", Object?.self, arguments: ["expression": .variable("commitPath")]),
      ] }

      /// A Git object in the repository
      public var object: Object? { __data["object"] }

      public init(
        object: Object? = nil
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": TDGitGraphQL.Objects.Repository.typename,
            "object": object._fieldData,
          ],
          fulfilledFragments: [
            ObjectIdentifier(GetFileQuery.Data.Repository.self)
          ]
        ))
      }

      /// Repository.Object
      ///
      /// Parent Type: `GitObject`
      public struct Object: TDGitGraphQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Interfaces.GitObject }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .inlineFragment(AsBlob.self),
        ] }

        public var asBlob: AsBlob? { _asInlineFragment() }

        public init(
          __typename: String
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": __typename,
            ],
            fulfilledFragments: [
              ObjectIdentifier(GetFileQuery.Data.Repository.Object.self)
            ]
          ))
        }

        /// Repository.Object.AsBlob
        ///
        /// Parent Type: `Blob`
        public struct AsBlob: TDGitGraphQL.InlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = GetFileQuery.Data.Repository.Object
          public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Blob }
          public static var __selections: [ApolloAPI.Selection] { [
            .fragment(FileContent.self),
          ] }

          /// The Git object ID
          public var oid: TDGitGraphQL.GitObjectID { __data["oid"] }
          /// The HTTP path for this Git object
          public var commitResourcePath: TDGitGraphQL.URI { __data["commitResourcePath"] }
          /// The HTTP URL for this Git object
          public var commitUrl: TDGitGraphQL.URI { __data["commitUrl"] }
          /// UTF8 text data or null if the Blob is binary
          public var text: String? { __data["text"] }
          /// Byte size of Blob object
          public var byteSize: Int { __data["byteSize"] }
          /// Indicates whether the Blob is binary or text. Returns null if unable to determine the encoding.
          public var isBinary: Bool? { __data["isBinary"] }
          /// Indicates whether the contents is truncated
          public var isTruncated: Bool { __data["isTruncated"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public var fileContent: FileContent { _toFragment() }
          }

          public init(
            oid: TDGitGraphQL.GitObjectID,
            commitResourcePath: TDGitGraphQL.URI,
            commitUrl: TDGitGraphQL.URI,
            text: String? = nil,
            byteSize: Int,
            isBinary: Bool? = nil,
            isTruncated: Bool
          ) {
            self.init(_dataDict: DataDict(
              data: [
                "__typename": TDGitGraphQL.Objects.Blob.typename,
                "oid": oid,
                "commitResourcePath": commitResourcePath,
                "commitUrl": commitUrl,
                "text": text,
                "byteSize": byteSize,
                "isBinary": isBinary,
                "isTruncated": isTruncated,
              ],
              fulfilledFragments: [
                ObjectIdentifier(GetFileQuery.Data.Repository.Object.self),
                ObjectIdentifier(GetFileQuery.Data.Repository.Object.AsBlob.self),
                ObjectIdentifier(FileContent.self)
              ]
            ))
          }
        }
      }
    }
  }
}
