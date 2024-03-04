// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// The possible viewed states of a file .
public enum FileViewedState: String, EnumType {
  /// The file has new changes since last viewed.
  case dismissed = "DISMISSED"
  /// The file has not been marked as viewed.
  case unviewed = "UNVIEWED"
  /// The file has been marked as viewed.
  case viewed = "VIEWED"
}
