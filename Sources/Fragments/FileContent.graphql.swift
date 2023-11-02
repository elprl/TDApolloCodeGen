// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct FileContent: TDGitGraphQL.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment FileContent on Blob { __typename oid commitResourcePath commitUrl text byteSize isBinary isTruncated }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Blob }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("oid", TDGitGraphQL.GitObjectID.self),
    .field("commitResourcePath", TDGitGraphQL.URI.self),
    .field("commitUrl", TDGitGraphQL.URI.self),
    .field("text", String?.self),
    .field("byteSize", Int.self),
    .field("isBinary", Bool?.self),
    .field("isTruncated", Bool.self),
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
        ObjectIdentifier(FileContent.self)
      ]
    ))
  }
}
