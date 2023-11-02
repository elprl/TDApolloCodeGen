// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct FileMetaData: TDGitGraphQL.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment FileMetaData on TreeEntry { __typename oid name type path extension object { __typename ... on Blob { byteSize isBinary isTruncated } ... on Tree { oid } } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.TreeEntry }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("oid", TDGitGraphQL.GitObjectID.self),
    .field("name", String.self),
    .field("type", String.self),
    .field("path", String?.self),
    .field("extension", String?.self),
    .field("object", Object?.self),
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
        ObjectIdentifier(FileMetaData.self)
      ]
    ))
  }

  /// Object
  ///
  /// Parent Type: `GitObject`
  public struct Object: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Interfaces.GitObject }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .inlineFragment(AsBlob.self),
      .inlineFragment(AsTree.self),
    ] }

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
          ObjectIdentifier(FileMetaData.Object.self)
        ]
      ))
    }

    /// Object.AsBlob
    ///
    /// Parent Type: `Blob`
    public struct AsBlob: TDGitGraphQL.InlineFragment {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public typealias RootEntityType = FileMetaData.Object
      public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Blob }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("byteSize", Int.self),
        .field("isBinary", Bool?.self),
        .field("isTruncated", Bool.self),
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
            ObjectIdentifier(FileMetaData.Object.self),
            ObjectIdentifier(FileMetaData.Object.AsBlob.self)
          ]
        ))
      }
    }

    /// Object.AsTree
    ///
    /// Parent Type: `Tree`
    public struct AsTree: TDGitGraphQL.InlineFragment {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public typealias RootEntityType = FileMetaData.Object
      public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Tree }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("oid", TDGitGraphQL.GitObjectID.self),
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
            ObjectIdentifier(FileMetaData.Object.self),
            ObjectIdentifier(FileMetaData.Object.AsTree.self)
          ]
        ))
      }
    }
  }
}
