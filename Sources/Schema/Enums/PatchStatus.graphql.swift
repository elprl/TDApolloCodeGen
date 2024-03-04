// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// The possible types of patch statuses.
public enum PatchStatus: String, EnumType {
  /// The file was added. Git status 'A'.
  case added = "ADDED"
  /// The file's type was changed. Git status 'T'.
  case changed = "CHANGED"
  /// The file was copied. Git status 'C'.
  case copied = "COPIED"
  /// The file was deleted. Git status 'D'.
  case deleted = "DELETED"
  /// The file's contents were changed. Git status 'M'.
  case modified = "MODIFIED"
  /// The file was renamed. Git status 'R'.
  case renamed = "RENAMED"
}
