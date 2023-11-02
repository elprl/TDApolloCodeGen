// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public final class GetUserProfileQuery: GraphQLQuery {
  public static let operationName: String = "GetUserProfile"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetUserProfile { viewer { __typename name url avatarUrl id login } }"#
    ))

  public init() {}

  public struct Data: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("viewer", Viewer.self),
    ] }

    /// The currently authenticated user.
    public var viewer: Viewer { __data["viewer"] }

    public init(
      viewer: Viewer
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": TDGitGraphQL.Objects.Query.typename,
          "viewer": viewer._fieldData,
        ],
        fulfilledFragments: [
          ObjectIdentifier(GetUserProfileQuery.Data.self)
        ]
      ))
    }

    /// Viewer
    ///
    /// Parent Type: `User`
    public struct Viewer: TDGitGraphQL.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String?.self),
        .field("url", TDGitGraphQL.URI.self),
        .field("avatarUrl", TDGitGraphQL.URI.self),
        .field("id", TDGitGraphQL.ID.self),
        .field("login", String.self),
      ] }

      /// The user's public profile name.
      public var name: String? { __data["name"] }
      /// The HTTP URL for this user
      public var url: TDGitGraphQL.URI { __data["url"] }
      /// A URL pointing to the user's public avatar.
      public var avatarUrl: TDGitGraphQL.URI { __data["avatarUrl"] }
      public var id: TDGitGraphQL.ID { __data["id"] }
      /// The username used to login.
      public var login: String { __data["login"] }

      public init(
        name: String? = nil,
        url: TDGitGraphQL.URI,
        avatarUrl: TDGitGraphQL.URI,
        id: TDGitGraphQL.ID,
        login: String
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": TDGitGraphQL.Objects.User.typename,
            "name": name,
            "url": url,
            "avatarUrl": avatarUrl,
            "id": id,
            "login": login,
          ],
          fulfilledFragments: [
            ObjectIdentifier(GetUserProfileQuery.Data.Viewer.self)
          ]
        ))
      }
    }
  }
}
