// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct RepositoryDetails: TDGitGraphQL.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment RepositoryDetails on Repository { __typename id name owner { __typename id login avatarUrl } stargazers { __typename totalCount } pullRequests { __typename totalCount } url updatedAt pushedAt primaryLanguage { __typename name } isPrivate defaultBranchRef { __typename name } description }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Repository }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", TDGitGraphQL.ID.self),
    .field("name", String.self),
    .field("owner", Owner.self),
    .field("stargazers", Stargazers.self),
    .field("pullRequests", PullRequests.self),
    .field("url", TDGitGraphQL.URI.self),
    .field("updatedAt", TDGitGraphQL.DateTime.self),
    .field("pushedAt", TDGitGraphQL.DateTime?.self),
    .field("primaryLanguage", PrimaryLanguage?.self),
    .field("isPrivate", Bool.self),
    .field("defaultBranchRef", DefaultBranchRef?.self),
    .field("description", String?.self),
  ] }

  public var id: TDGitGraphQL.ID { __data["id"] }
  /// The name of the repository.
  public var name: String { __data["name"] }
  /// The User owner of the repository.
  public var owner: Owner { __data["owner"] }
  /// A list of users who have starred this starrable.
  public var stargazers: Stargazers { __data["stargazers"] }
  /// A list of pull requests that have been opened in the repository.
  public var pullRequests: PullRequests { __data["pullRequests"] }
  /// The HTTP URL for this repository
  public var url: TDGitGraphQL.URI { __data["url"] }
  /// Identifies the date and time when the object was last updated.
  public var updatedAt: TDGitGraphQL.DateTime { __data["updatedAt"] }
  /// Identifies the date and time when the repository was last pushed to.
  public var pushedAt: TDGitGraphQL.DateTime? { __data["pushedAt"] }
  /// The primary language of the repository's code.
  public var primaryLanguage: PrimaryLanguage? { __data["primaryLanguage"] }
  /// Identifies if the repository is private or internal.
  public var isPrivate: Bool { __data["isPrivate"] }
  /// The Ref associated with the repository's default branch.
  public var defaultBranchRef: DefaultBranchRef? { __data["defaultBranchRef"] }
  /// The description of the repository.
  public var description: String? { __data["description"] }

  public init(
    id: TDGitGraphQL.ID,
    name: String,
    owner: Owner,
    stargazers: Stargazers,
    pullRequests: PullRequests,
    url: TDGitGraphQL.URI,
    updatedAt: TDGitGraphQL.DateTime,
    pushedAt: TDGitGraphQL.DateTime? = nil,
    primaryLanguage: PrimaryLanguage? = nil,
    isPrivate: Bool,
    defaultBranchRef: DefaultBranchRef? = nil,
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
        ObjectIdentifier(RepositoryDetails.self)
      ]
    ))
  }

  /// Owner
  ///
  /// Parent Type: `RepositoryOwner`
  public struct Owner: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Interfaces.RepositoryOwner }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", TDGitGraphQL.ID.self),
      .field("login", String.self),
      .field("avatarUrl", TDGitGraphQL.URI.self),
    ] }

    public var id: TDGitGraphQL.ID { __data["id"] }
    /// The username used to login.
    public var login: String { __data["login"] }
    /// A URL pointing to the owner's public avatar.
    public var avatarUrl: TDGitGraphQL.URI { __data["avatarUrl"] }

    public init(
      __typename: String,
      id: TDGitGraphQL.ID,
      login: String,
      avatarUrl: TDGitGraphQL.URI
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": __typename,
          "id": id,
          "login": login,
          "avatarUrl": avatarUrl,
        ],
        fulfilledFragments: [
          ObjectIdentifier(RepositoryDetails.Owner.self)
        ]
      ))
    }
  }

  /// Stargazers
  ///
  /// Parent Type: `StargazerConnection`
  public struct Stargazers: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.StargazerConnection }
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
          "__typename": TDGitGraphQL.Objects.StargazerConnection.typename,
          "totalCount": totalCount,
        ],
        fulfilledFragments: [
          ObjectIdentifier(RepositoryDetails.Stargazers.self)
        ]
      ))
    }
  }

  /// PullRequests
  ///
  /// Parent Type: `PullRequestConnection`
  public struct PullRequests: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.PullRequestConnection }
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
          "__typename": TDGitGraphQL.Objects.PullRequestConnection.typename,
          "totalCount": totalCount,
        ],
        fulfilledFragments: [
          ObjectIdentifier(RepositoryDetails.PullRequests.self)
        ]
      ))
    }
  }

  /// PrimaryLanguage
  ///
  /// Parent Type: `Language`
  public struct PrimaryLanguage: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Language }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("name", String.self),
    ] }

    /// The name of the current language.
    public var name: String { __data["name"] }

    public init(
      name: String
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": TDGitGraphQL.Objects.Language.typename,
          "name": name,
        ],
        fulfilledFragments: [
          ObjectIdentifier(RepositoryDetails.PrimaryLanguage.self)
        ]
      ))
    }
  }

  /// DefaultBranchRef
  ///
  /// Parent Type: `Ref`
  public struct DefaultBranchRef: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Ref }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("name", String.self),
    ] }

    /// The ref name.
    public var name: String { __data["name"] }

    public init(
      name: String
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": TDGitGraphQL.Objects.Ref.typename,
          "name": name,
        ],
        fulfilledFragments: [
          ObjectIdentifier(RepositoryDetails.DefaultBranchRef.self)
        ]
      ))
    }
  }
}
