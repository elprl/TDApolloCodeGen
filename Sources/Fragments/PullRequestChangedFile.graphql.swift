// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct PullRequestChangedFile: TDGitGraphQL.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment PullRequestChangedFile on PullRequestChangedFile { __typename additions changeType deletions path viewerViewedState }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.PullRequestChangedFile }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("additions", Int.self),
    .field("changeType", GraphQLEnum<TDGitGraphQL.PatchStatus>.self),
    .field("deletions", Int.self),
    .field("path", String.self),
    .field("viewerViewedState", GraphQLEnum<TDGitGraphQL.FileViewedState>.self),
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
        ObjectIdentifier(PullRequestChangedFile.self)
      ]
    ))
  }
}
