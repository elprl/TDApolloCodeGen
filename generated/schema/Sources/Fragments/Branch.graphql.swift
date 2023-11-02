// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct Branch: TDGitGraphQL.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment Branch on Ref { __typename name target { __typename ... on Commit { history(first: 0) { __typename totalCount } } } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Ref }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("name", String.self),
    .field("target", Target?.self),
  ] }

  /// The ref name.
  public var name: String { __data["name"] }
  /// The object the ref points to. Returns null when object does not exist.
  public var target: Target? { __data["target"] }

  public init(
    name: String,
    target: Target? = nil
  ) {
    self.init(_dataDict: DataDict(
      data: [
        "__typename": TDGitGraphQL.Objects.Ref.typename,
        "name": name,
        "target": target._fieldData,
      ],
      fulfilledFragments: [
        ObjectIdentifier(Branch.self)
      ]
    ))
  }

  /// Target
  ///
  /// Parent Type: `GitObject`
  public struct Target: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Interfaces.GitObject }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .inlineFragment(AsCommit.self),
    ] }

    public var asCommit: AsCommit? { _asInlineFragment() }

    public init(
      __typename: String
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": __typename,
        ],
        fulfilledFragments: [
          ObjectIdentifier(Branch.Target.self)
        ]
      ))
    }

    /// Target.AsCommit
    ///
    /// Parent Type: `Commit`
    public struct AsCommit: TDGitGraphQL.InlineFragment {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public typealias RootEntityType = Branch.Target
      public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Commit }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("history", History.self, arguments: ["first": 0]),
      ] }

      /// The linear commit history starting from (and including) this commit, in the same order as `git log`.
      public var history: History { __data["history"] }

      public init(
        history: History
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": TDGitGraphQL.Objects.Commit.typename,
            "history": history._fieldData,
          ],
          fulfilledFragments: [
            ObjectIdentifier(Branch.Target.self),
            ObjectIdentifier(Branch.Target.AsCommit.self)
          ]
        ))
      }

      /// Target.AsCommit.History
      ///
      /// Parent Type: `CommitHistoryConnection`
      public struct History: TDGitGraphQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.CommitHistoryConnection }
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
              "__typename": TDGitGraphQL.Objects.CommitHistoryConnection.typename,
              "totalCount": totalCount,
            ],
            fulfilledFragments: [
              ObjectIdentifier(Branch.Target.AsCommit.History.self)
            ]
          ))
        }
      }
    }
  }
}
