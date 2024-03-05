// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct PullRequestDetails: TDGitGraphQL.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment PullRequestDetails on PullRequest { __typename title number createdAt url bodyText state baseRefName headRefName author { __typename avatarUrl login } changedFiles }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.PullRequest }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("title", String.self),
    .field("number", Int.self),
    .field("createdAt", TDGitGraphQL.DateTime.self),
    .field("url", TDGitGraphQL.URI.self),
    .field("bodyText", String.self),
    .field("state", GraphQLEnum<TDGitGraphQL.PullRequestState>.self),
    .field("baseRefName", String.self),
    .field("headRefName", String.self),
    .field("author", Author?.self),
    .field("changedFiles", Int.self),
  ] }

  /// Identifies the pull request title.
  public var title: String { __data["title"] }
  /// Identifies the pull request number.
  public var number: Int { __data["number"] }
  /// Identifies the date and time when the object was created.
  public var createdAt: TDGitGraphQL.DateTime { __data["createdAt"] }
  /// The HTTP URL for this pull request.
  public var url: TDGitGraphQL.URI { __data["url"] }
  /// The body rendered to text.
  public var bodyText: String { __data["bodyText"] }
  /// Identifies the state of the pull request.
  public var state: GraphQLEnum<TDGitGraphQL.PullRequestState> { __data["state"] }
  /// Identifies the name of the base Ref associated with the pull request, even if the ref has been deleted.
  public var baseRefName: String { __data["baseRefName"] }
  /// Identifies the name of the head Ref associated with the pull request, even if the ref has been deleted.
  public var headRefName: String { __data["headRefName"] }
  /// The actor who authored the comment.
  public var author: Author? { __data["author"] }
  /// The number of changed files in this pull request.
  public var changedFiles: Int { __data["changedFiles"] }

  public init(
    title: String,
    number: Int,
    createdAt: TDGitGraphQL.DateTime,
    url: TDGitGraphQL.URI,
    bodyText: String,
    state: GraphQLEnum<TDGitGraphQL.PullRequestState>,
    baseRefName: String,
    headRefName: String,
    author: Author? = nil,
    changedFiles: Int
  ) {
    self.init(_dataDict: DataDict(
      data: [
        "__typename": TDGitGraphQL.Objects.PullRequest.typename,
        "title": title,
        "number": number,
        "createdAt": createdAt,
        "url": url,
        "bodyText": bodyText,
        "state": state,
        "baseRefName": baseRefName,
        "headRefName": headRefName,
        "author": author._fieldData,
        "changedFiles": changedFiles,
      ],
      fulfilledFragments: [
        ObjectIdentifier(PullRequestDetails.self)
      ]
    ))
  }

  /// Author
  ///
  /// Parent Type: `Actor`
  public struct Author: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Interfaces.Actor }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("avatarUrl", TDGitGraphQL.URI.self),
      .field("login", String.self),
    ] }

    /// A URL pointing to the actor's public avatar.
    public var avatarUrl: TDGitGraphQL.URI { __data["avatarUrl"] }
    /// The username of the actor.
    public var login: String { __data["login"] }

    public init(
      __typename: String,
      avatarUrl: TDGitGraphQL.URI,
      login: String
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": __typename,
          "avatarUrl": avatarUrl,
          "login": login,
        ],
        fulfilledFragments: [
          ObjectIdentifier(PullRequestDetails.Author.self)
        ]
      ))
    }
  }
}
