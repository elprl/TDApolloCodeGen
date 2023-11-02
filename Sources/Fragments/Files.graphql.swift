// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct Files: TDGitGraphQL.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment Files on Tree { __typename entries { __typename ...FileMetaData } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Tree }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("entries", [Entry]?.self),
  ] }

  /// A list of tree entries.
  public var entries: [Entry]? { __data["entries"] }

  public init(
    entries: [Entry]? = nil
  ) {
    self.init(_dataDict: DataDict(
      data: [
        "__typename": TDGitGraphQL.Objects.Tree.typename,
        "entries": entries._fieldData,
      ],
      fulfilledFragments: [
        ObjectIdentifier(Files.self)
      ]
    ))
  }

  /// Entry
  ///
  /// Parent Type: `TreeEntry`
  public struct Entry: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.TreeEntry }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .fragment(FileMetaData.self),
    ] }

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
          ObjectIdentifier(Files.Entry.self),
          ObjectIdentifier(FileMetaData.self)
        ]
      ))
    }

    /// Entry.Object
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
            ObjectIdentifier(Files.Entry.Object.self)
          ]
        ))
      }

      /// Entry.Object.AsBlob
      ///
      /// Parent Type: `Blob`
      public struct AsBlob: TDGitGraphQL.InlineFragment, ApolloAPI.CompositeInlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = Files.Entry.Object
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
              ObjectIdentifier(Files.Entry.Object.self),
              ObjectIdentifier(Files.Entry.Object.AsBlob.self),
              ObjectIdentifier(FileMetaData.Object.self),
              ObjectIdentifier(FileMetaData.Object.AsBlob.self)
            ]
          ))
        }
      }

      /// Entry.Object.AsTree
      ///
      /// Parent Type: `Tree`
      public struct AsTree: TDGitGraphQL.InlineFragment, ApolloAPI.CompositeInlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = Files.Entry.Object
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
              ObjectIdentifier(Files.Entry.Object.self),
              ObjectIdentifier(Files.Entry.Object.AsTree.self),
              ObjectIdentifier(FileMetaData.Object.self),
              ObjectIdentifier(FileMetaData.Object.AsTree.self)
            ]
          ))
        }
      }
    }
  }
}
