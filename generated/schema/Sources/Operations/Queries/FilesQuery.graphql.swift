// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public final class FilesQuery: GraphQLQuery {
  public static let operationName: String = "Files"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query Files($owner: String!, $repo: String!, $branch: String!) { repository(owner: $owner, name: $repo) { __typename ... on Repository { refs(first: 100, refPrefix: "refs/heads/", after: "") { __typename totalCount } object(expression: $branch) { __typename ... on Tree { ...Files } } } } ...RateLimitWithoutTypeCondition }"#,
      fragments: [Files.self, FileMetaData.self, RateLimitWithoutTypeCondition.self]
    ))

  public var owner: String
  public var repo: String
  public var branch: String

  public init(
    owner: String,
    repo: String,
    branch: String
  ) {
    self.owner = owner
    self.repo = repo
    self.branch = branch
  }

  public var __variables: Variables? { [
    "owner": owner,
    "repo": repo,
    "branch": branch
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
          ObjectIdentifier(FilesQuery.Data.self),
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
          "after": ""
        ]),
        .field("object", Object?.self, arguments: ["expression": .variable("branch")]),
      ] }

      /// Fetch a list of refs from the repository
      public var refs: Refs? { __data["refs"] }
      /// A Git object in the repository
      public var object: Object? { __data["object"] }

      public init(
        refs: Refs? = nil,
        object: Object? = nil
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": TDGitGraphQL.Objects.Repository.typename,
            "refs": refs._fieldData,
            "object": object._fieldData,
          ],
          fulfilledFragments: [
            ObjectIdentifier(FilesQuery.Data.Repository.self)
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
          .field("totalCount", Int.self),
        ] }

        /// Identifies the total count of items in the connection.
        public var totalCount: Int { __data["totalCount"] }

        public init(
          totalCount: Int
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": TDGitGraphQL.Objects.RefConnection.typename,
              "totalCount": totalCount,
            ],
            fulfilledFragments: [
              ObjectIdentifier(FilesQuery.Data.Repository.Refs.self)
            ]
          ))
        }
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
          .inlineFragment(AsTree.self),
        ] }

        public var asTree: AsTree? { _asInlineFragment() }

        public init(
          __typename: String
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": __typename,
            ],
            fulfilledFragments: [
              ObjectIdentifier(FilesQuery.Data.Repository.Object.self)
            ]
          ))
        }

        /// Repository.Object.AsTree
        ///
        /// Parent Type: `Tree`
        public struct AsTree: TDGitGraphQL.InlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = FilesQuery.Data.Repository.Object
          public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Tree }
          public static var __selections: [ApolloAPI.Selection] { [
            .fragment(Files.self),
          ] }

          /// A list of tree entries.
          public var entries: [Entry]? { __data["entries"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public var files: Files { _toFragment() }
          }

          public init(
            entries: [Entry]? = nil
          ) {
            self.init(_dataDict: DataDict(
              data: [
                "__typename": TDGitGraphQL.Objects.Tree.typename,
                "entries": entries._fieldData,
              ],
              fulfilledFragments: [
                ObjectIdentifier(FilesQuery.Data.Repository.Object.self),
                ObjectIdentifier(FilesQuery.Data.Repository.Object.AsTree.self),
                ObjectIdentifier(Files.self)
              ]
            ))
          }

          /// Repository.Object.AsTree.Entry
          ///
          /// Parent Type: `TreeEntry`
          public struct Entry: TDGitGraphQL.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.TreeEntry }

            /// Entry file Git object ID.
            public var oid: TDGitGraphQL.GitObjectID { __data["oid"] }
            /// Entry file name.
            public var name: String { __data["name"] }
            /// Entry file type.
            public var type: String { __data["type"] }
            /// The full path of the file.
            public var path: String? { __data["path"] }
            /// The extension of the file
            public var `extension`: String? { __data["extension"] }
            /// Entry file object.
            public var object: Object? { __data["object"] }

            public struct Fragments: FragmentContainer {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public var fileMetaData: FileMetaData { _toFragment() }
            }

            public init(
              oid: TDGitGraphQL.GitObjectID,
              name: String,
              type: String,
              path: String? = nil,
              `extension`: String? = nil,
              object: Object? = nil
            ) {
              self.init(_dataDict: DataDict(
                data: [
                  "__typename": TDGitGraphQL.Objects.TreeEntry.typename,
                  "oid": oid,
                  "name": name,
                  "type": type,
                  "path": path,
                  "extension": `extension`,
                  "object": object._fieldData,
                ],
                fulfilledFragments: [
                  ObjectIdentifier(FilesQuery.Data.Repository.Object.AsTree.Entry.self),
                  ObjectIdentifier(FileMetaData.self),
                  ObjectIdentifier(Files.Entry.self)
                ]
              ))
            }

            /// Repository.Object.AsTree.Entry.Object
            ///
            /// Parent Type: `GitObject`
            public struct Object: TDGitGraphQL.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Interfaces.GitObject }

              public var asBlob: AsBlob? { _asInlineFragment() }
              public var asTree: AsTree? { _asInlineFragment() }

              public init(
                __typename: String
              ) {
                self.init(_dataDict: DataDict(
                  data: [
                    "__typename": __typename,
                  ],
                  fulfilledFragments: [
                    ObjectIdentifier(FilesQuery.Data.Repository.Object.AsTree.Entry.Object.self)
                  ]
                ))
              }

              /// Repository.Object.AsTree.Entry.Object.AsBlob
              ///
              /// Parent Type: `Blob`
              public struct AsBlob: TDGitGraphQL.InlineFragment, ApolloAPI.CompositeInlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = FilesQuery.Data.Repository.Object.AsTree.Entry.Object
                public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Blob }
                public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                  FileMetaData.Object.AsBlob.self
                ] }

                /// Byte size of Blob object
                public var byteSize: Int { __data["byteSize"] }
                /// Indicates whether the Blob is binary or text. Returns null if unable to determine the encoding.
                public var isBinary: Bool? { __data["isBinary"] }
                /// Indicates whether the contents is truncated
                public var isTruncated: Bool { __data["isTruncated"] }

                public init(
                  byteSize: Int,
                  isBinary: Bool? = nil,
                  isTruncated: Bool
                ) {
                  self.init(_dataDict: DataDict(
                    data: [
                      "__typename": TDGitGraphQL.Objects.Blob.typename,
                      "byteSize": byteSize,
                      "isBinary": isBinary,
                      "isTruncated": isTruncated,
                    ],
                    fulfilledFragments: [
                      ObjectIdentifier(FilesQuery.Data.Repository.Object.AsTree.Entry.Object.self),
                      ObjectIdentifier(FilesQuery.Data.Repository.Object.AsTree.Entry.Object.AsBlob.self),
                      ObjectIdentifier(FileMetaData.Object.self),
                      ObjectIdentifier(FileMetaData.Object.AsBlob.self)
                    ]
                  ))
                }
              }

              /// Repository.Object.AsTree.Entry.Object.AsTree
              ///
              /// Parent Type: `Tree`
              public struct AsTree: TDGitGraphQL.InlineFragment, ApolloAPI.CompositeInlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = FilesQuery.Data.Repository.Object.AsTree.Entry.Object
                public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Tree }
                public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                  FileMetaData.Object.AsTree.self
                ] }

                /// The Git object ID
                public var oid: TDGitGraphQL.GitObjectID { __data["oid"] }

                public init(
                  oid: TDGitGraphQL.GitObjectID
                ) {
                  self.init(_dataDict: DataDict(
                    data: [
                      "__typename": TDGitGraphQL.Objects.Tree.typename,
                      "oid": oid,
                    ],
                    fulfilledFragments: [
                      ObjectIdentifier(FilesQuery.Data.Repository.Object.AsTree.Entry.Object.self),
                      ObjectIdentifier(FilesQuery.Data.Repository.Object.AsTree.Entry.Object.AsTree.self),
                      ObjectIdentifier(FileMetaData.Object.self),
                      ObjectIdentifier(FileMetaData.Object.AsTree.self)
                    ]
                  ))
                }
              }
            }
          }
        }
      }
    }
  }
}
