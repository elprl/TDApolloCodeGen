// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct Branches: TDGitGraphQL.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment Branches on RefConnection { __typename totalCount edges { __typename node { __typename ...Branch } } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.RefConnection }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("totalCount", Int.self),
    .field("edges", [Edge?]?.self),
  ] }

  /// Identifies the total count of items in the connection.
  public var totalCount: Int { __data["totalCount"] }
  /// A list of edges.
  public var edges: [Edge?]? { __data["edges"] }

  public init(
    totalCount: Int,
    edges: [Edge?]? = nil
  ) {
    self.init(_dataDict: DataDict(
      data: [
        "__typename": TDGitGraphQL.Objects.RefConnection.typename,
        "totalCount": totalCount,
        "edges": edges._fieldData,
      ],
      fulfilledFragments: [
        ObjectIdentifier(Branches.self)
      ]
    ))
  }

  /// Edge
  ///
  /// Parent Type: `RefEdge`
  public struct Edge: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.RefEdge }
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
          "__typename": TDGitGraphQL.Objects.RefEdge.typename,
          "node": node._fieldData,
        ],
        fulfilledFragments: [
          ObjectIdentifier(Branches.Edge.self)
        ]
      ))
    }

    /// Edge.Node
    ///
    /// Parent Type: `Ref`
    public struct Node: TDGitGraphQL.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Ref }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .fragment(Branch.self),
      ] }

      /// The ref name.
      public var name: String { __data["name"] }
      /// The object the ref points to. Returns null when object does not exist.
      public var target: Target? { __data["target"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var branch: Branch { _toFragment() }
      }

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
            ObjectIdentifier(Branches.Edge.Node.self),
            ObjectIdentifier(Branch.self)
          ]
        ))
      }

      /// Edge.Node.Target
      ///
      /// Parent Type: `GitObject`
      public struct Target: TDGitGraphQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Interfaces.GitObject }

        public var asCommit: AsCommit? { _asInlineFragment() }

        public init(
          __typename: String
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": __typename,
            ],
            fulfilledFragments: [
              ObjectIdentifier(Branches.Edge.Node.Target.self)
            ]
          ))
        }

        /// Edge.Node.Target.AsCommit
        ///
        /// Parent Type: `Commit`
        public struct AsCommit: TDGitGraphQL.InlineFragment, ApolloAPI.CompositeInlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = Branches.Edge.Node.Target
          public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Commit }
          public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
            Branch.Target.AsCommit.self
          ] }

          /// The linear commit history starting from (and including) this commit, in the same order as `git log`.
          public var history: Branch.Target.AsCommit.History { __data["history"] }

          public init(
            history: Branch.Target.AsCommit.History
          ) {
            self.init(_dataDict: DataDict(
              data: [
                "__typename": TDGitGraphQL.Objects.Commit.typename,
                "history": history._fieldData,
              ],
              fulfilledFragments: [
                ObjectIdentifier(Branches.Edge.Node.Target.self),
                ObjectIdentifier(Branches.Edge.Node.Target.AsCommit.self),
                ObjectIdentifier(Branch.Target.self),
                ObjectIdentifier(Branch.Target.AsCommit.self)
              ]
            ))
          }
        }
      }
    }
  }
}
