// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct RateLimitWithoutTypeCondition: TDGitGraphQL.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment RateLimitWithoutTypeCondition on Query { __typename rateLimit { __typename limit cost remaining resetAt } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.Query }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("rateLimit", RateLimit?.self),
  ] }

  /// The client's rate limit information.
  public var rateLimit: RateLimit? { __data["rateLimit"] }

  public init(
    rateLimit: RateLimit? = nil
  ) {
    self.init(_dataDict: DataDict(
      data: [
        "__typename": TDGitGraphQL.Objects.Query.typename,
        "rateLimit": rateLimit._fieldData,
      ],
      fulfilledFragments: [
        ObjectIdentifier(RateLimitWithoutTypeCondition.self)
      ]
    ))
  }

  /// RateLimit
  ///
  /// Parent Type: `RateLimit`
  public struct RateLimit: TDGitGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TDGitGraphQL.Objects.RateLimit }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("limit", Int.self),
      .field("cost", Int.self),
      .field("remaining", Int.self),
      .field("resetAt", TDGitGraphQL.DateTime.self),
    ] }

    /// The maximum number of points the client is permitted to consume in a 60 minute window.
    public var limit: Int { __data["limit"] }
    /// The point cost for the current query counting against the rate limit.
    public var cost: Int { __data["cost"] }
    /// The number of points remaining in the current rate limit window.
    public var remaining: Int { __data["remaining"] }
    /// The time at which the current rate limit window resets in UTC epoch seconds.
    public var resetAt: TDGitGraphQL.DateTime { __data["resetAt"] }

    public init(
      limit: Int,
      cost: Int,
      remaining: Int,
      resetAt: TDGitGraphQL.DateTime
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": TDGitGraphQL.Objects.RateLimit.typename,
          "limit": limit,
          "cost": cost,
          "remaining": remaining,
          "resetAt": resetAt,
        ],
        fulfilledFragments: [
          ObjectIdentifier(RateLimitWithoutTypeCondition.RateLimit.self)
        ]
      ))
    }
  }
}
