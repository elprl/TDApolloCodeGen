// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == TDGitGraphQL.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == TDGitGraphQL.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == TDGitGraphQL.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == TDGitGraphQL.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
    switch typename {
    case "Query": return TDGitGraphQL.Objects.Query
    case "User": return TDGitGraphQL.Objects.User
    case "Bot": return TDGitGraphQL.Objects.Bot
    case "AddedToMergeQueueEvent": return TDGitGraphQL.Objects.AddedToMergeQueueEvent
    case "AddedToProjectEvent": return TDGitGraphQL.Objects.AddedToProjectEvent
    case "App": return TDGitGraphQL.Objects.App
    case "AssignedEvent": return TDGitGraphQL.Objects.AssignedEvent
    case "AutoMergeDisabledEvent": return TDGitGraphQL.Objects.AutoMergeDisabledEvent
    case "AutoMergeEnabledEvent": return TDGitGraphQL.Objects.AutoMergeEnabledEvent
    case "AutoRebaseEnabledEvent": return TDGitGraphQL.Objects.AutoRebaseEnabledEvent
    case "AutoSquashEnabledEvent": return TDGitGraphQL.Objects.AutoSquashEnabledEvent
    case "AutomaticBaseChangeFailedEvent": return TDGitGraphQL.Objects.AutomaticBaseChangeFailedEvent
    case "AutomaticBaseChangeSucceededEvent": return TDGitGraphQL.Objects.AutomaticBaseChangeSucceededEvent
    case "BaseRefChangedEvent": return TDGitGraphQL.Objects.BaseRefChangedEvent
    case "BaseRefDeletedEvent": return TDGitGraphQL.Objects.BaseRefDeletedEvent
    case "BaseRefForcePushedEvent": return TDGitGraphQL.Objects.BaseRefForcePushedEvent
    case "Blob": return TDGitGraphQL.Objects.Blob
    case "Commit": return TDGitGraphQL.Objects.Commit
    case "Discussion": return TDGitGraphQL.Objects.Discussion
    case "Issue": return TDGitGraphQL.Objects.Issue
    case "PullRequest": return TDGitGraphQL.Objects.PullRequest
    case "CommitComment": return TDGitGraphQL.Objects.CommitComment
    case "DiscussionComment": return TDGitGraphQL.Objects.DiscussionComment
    case "GistComment": return TDGitGraphQL.Objects.GistComment
    case "IssueComment": return TDGitGraphQL.Objects.IssueComment
    case "PullRequestReview": return TDGitGraphQL.Objects.PullRequestReview
    case "CommitCommentThread": return TDGitGraphQL.Objects.CommitCommentThread
    case "DependabotUpdate": return TDGitGraphQL.Objects.DependabotUpdate
    case "DiscussionCategory": return TDGitGraphQL.Objects.DiscussionCategory
    case "PinnedDiscussion": return TDGitGraphQL.Objects.PinnedDiscussion
    case "PullRequestCommitCommentThread": return TDGitGraphQL.Objects.PullRequestCommitCommentThread
    case "PullRequestReviewComment": return TDGitGraphQL.Objects.PullRequestReviewComment
    case "TeamDiscussion": return TDGitGraphQL.Objects.TeamDiscussion
    case "CheckRun": return TDGitGraphQL.Objects.CheckRun
    case "StatusContext": return TDGitGraphQL.Objects.StatusContext
    case "ClosedEvent": return TDGitGraphQL.Objects.ClosedEvent
    case "ConvertToDraftEvent": return TDGitGraphQL.Objects.ConvertToDraftEvent
    case "CrossReferencedEvent": return TDGitGraphQL.Objects.CrossReferencedEvent
    case "Gist": return TDGitGraphQL.Objects.Gist
    case "Repository": return TDGitGraphQL.Objects.Repository
    case "Organization": return TDGitGraphQL.Objects.Organization
    case "Enterprise": return TDGitGraphQL.Objects.Enterprise
    case "Team": return TDGitGraphQL.Objects.Team
    case "Topic": return TDGitGraphQL.Objects.Topic
    case "Mannequin": return TDGitGraphQL.Objects.Mannequin
    case "MergedEvent": return TDGitGraphQL.Objects.MergedEvent
    case "Milestone": return TDGitGraphQL.Objects.Milestone
    case "PullRequestCommit": return TDGitGraphQL.Objects.PullRequestCommit
    case "ReadyForReviewEvent": return TDGitGraphQL.Objects.ReadyForReviewEvent
    case "Release": return TDGitGraphQL.Objects.Release
    case "RepositoryTopic": return TDGitGraphQL.Objects.RepositoryTopic
    case "ReviewDismissedEvent": return TDGitGraphQL.Objects.ReviewDismissedEvent
    case "TeamDiscussionComment": return TDGitGraphQL.Objects.TeamDiscussionComment
    case "Workflow": return TDGitGraphQL.Objects.Workflow
    case "WorkflowRun": return TDGitGraphQL.Objects.WorkflowRun
    case "WorkflowRunFile": return TDGitGraphQL.Objects.WorkflowRunFile
    case "RepositoryVulnerabilityAlert": return TDGitGraphQL.Objects.RepositoryVulnerabilityAlert
    case "Project": return TDGitGraphQL.Objects.Project
    case "ProjectV2": return TDGitGraphQL.Objects.ProjectV2
    case "Tag": return TDGitGraphQL.Objects.Tag
    case "Tree": return TDGitGraphQL.Objects.Tree
    case "BranchProtectionRule": return TDGitGraphQL.Objects.BranchProtectionRule
    case "BypassForcePushAllowance": return TDGitGraphQL.Objects.BypassForcePushAllowance
    case "BypassPullRequestAllowance": return TDGitGraphQL.Objects.BypassPullRequestAllowance
    case "CWE": return TDGitGraphQL.Objects.CWE
    case "CheckSuite": return TDGitGraphQL.Objects.CheckSuite
    case "CodeOfConduct": return TDGitGraphQL.Objects.CodeOfConduct
    case "CommentDeletedEvent": return TDGitGraphQL.Objects.CommentDeletedEvent
    case "Comparison": return TDGitGraphQL.Objects.Comparison
    case "ConnectedEvent": return TDGitGraphQL.Objects.ConnectedEvent
    case "ConvertedNoteToIssueEvent": return TDGitGraphQL.Objects.ConvertedNoteToIssueEvent
    case "ConvertedToDiscussionEvent": return TDGitGraphQL.Objects.ConvertedToDiscussionEvent
    case "DemilestonedEvent": return TDGitGraphQL.Objects.DemilestonedEvent
    case "DependencyGraphManifest": return TDGitGraphQL.Objects.DependencyGraphManifest
    case "DeployKey": return TDGitGraphQL.Objects.DeployKey
    case "DeployedEvent": return TDGitGraphQL.Objects.DeployedEvent
    case "Deployment": return TDGitGraphQL.Objects.Deployment
    case "DeploymentEnvironmentChangedEvent": return TDGitGraphQL.Objects.DeploymentEnvironmentChangedEvent
    case "DeploymentReview": return TDGitGraphQL.Objects.DeploymentReview
    case "DeploymentStatus": return TDGitGraphQL.Objects.DeploymentStatus
    case "DisconnectedEvent": return TDGitGraphQL.Objects.DisconnectedEvent
    case "DiscussionPoll": return TDGitGraphQL.Objects.DiscussionPoll
    case "DiscussionPollOption": return TDGitGraphQL.Objects.DiscussionPollOption
    case "DraftIssue": return TDGitGraphQL.Objects.DraftIssue
    case "EnterpriseAdministratorInvitation": return TDGitGraphQL.Objects.EnterpriseAdministratorInvitation
    case "EnterpriseIdentityProvider": return TDGitGraphQL.Objects.EnterpriseIdentityProvider
    case "EnterpriseRepositoryInfo": return TDGitGraphQL.Objects.EnterpriseRepositoryInfo
    case "EnterpriseServerInstallation": return TDGitGraphQL.Objects.EnterpriseServerInstallation
    case "EnterpriseServerUserAccount": return TDGitGraphQL.Objects.EnterpriseServerUserAccount
    case "EnterpriseServerUserAccountEmail": return TDGitGraphQL.Objects.EnterpriseServerUserAccountEmail
    case "EnterpriseServerUserAccountsUpload": return TDGitGraphQL.Objects.EnterpriseServerUserAccountsUpload
    case "EnterpriseUserAccount": return TDGitGraphQL.Objects.EnterpriseUserAccount
    case "Environment": return TDGitGraphQL.Objects.Environment
    case "ExternalIdentity": return TDGitGraphQL.Objects.ExternalIdentity
    case "HeadRefDeletedEvent": return TDGitGraphQL.Objects.HeadRefDeletedEvent
    case "HeadRefForcePushedEvent": return TDGitGraphQL.Objects.HeadRefForcePushedEvent
    case "HeadRefRestoredEvent": return TDGitGraphQL.Objects.HeadRefRestoredEvent
    case "IpAllowListEntry": return TDGitGraphQL.Objects.IpAllowListEntry
    case "Label": return TDGitGraphQL.Objects.Label
    case "LabeledEvent": return TDGitGraphQL.Objects.LabeledEvent
    case "Language": return TDGitGraphQL.Objects.Language
    case "License": return TDGitGraphQL.Objects.License
    case "LinkedBranch": return TDGitGraphQL.Objects.LinkedBranch
    case "LockedEvent": return TDGitGraphQL.Objects.LockedEvent
    case "MarkedAsDuplicateEvent": return TDGitGraphQL.Objects.MarkedAsDuplicateEvent
    case "MarketplaceCategory": return TDGitGraphQL.Objects.MarketplaceCategory
    case "MarketplaceListing": return TDGitGraphQL.Objects.MarketplaceListing
    case "MembersCanDeleteReposClearAuditEntry": return TDGitGraphQL.Objects.MembersCanDeleteReposClearAuditEntry
    case "MembersCanDeleteReposDisableAuditEntry": return TDGitGraphQL.Objects.MembersCanDeleteReposDisableAuditEntry
    case "MembersCanDeleteReposEnableAuditEntry": return TDGitGraphQL.Objects.MembersCanDeleteReposEnableAuditEntry
    case "OauthApplicationCreateAuditEntry": return TDGitGraphQL.Objects.OauthApplicationCreateAuditEntry
    case "OrgOauthAppAccessApprovedAuditEntry": return TDGitGraphQL.Objects.OrgOauthAppAccessApprovedAuditEntry
    case "OrgOauthAppAccessBlockedAuditEntry": return TDGitGraphQL.Objects.OrgOauthAppAccessBlockedAuditEntry
    case "OrgOauthAppAccessDeniedAuditEntry": return TDGitGraphQL.Objects.OrgOauthAppAccessDeniedAuditEntry
    case "OrgOauthAppAccessRequestedAuditEntry": return TDGitGraphQL.Objects.OrgOauthAppAccessRequestedAuditEntry
    case "OrgOauthAppAccessUnblockedAuditEntry": return TDGitGraphQL.Objects.OrgOauthAppAccessUnblockedAuditEntry
    case "OrgAddBillingManagerAuditEntry": return TDGitGraphQL.Objects.OrgAddBillingManagerAuditEntry
    case "OrgAddMemberAuditEntry": return TDGitGraphQL.Objects.OrgAddMemberAuditEntry
    case "OrgBlockUserAuditEntry": return TDGitGraphQL.Objects.OrgBlockUserAuditEntry
    case "OrgConfigDisableCollaboratorsOnlyAuditEntry": return TDGitGraphQL.Objects.OrgConfigDisableCollaboratorsOnlyAuditEntry
    case "OrgConfigEnableCollaboratorsOnlyAuditEntry": return TDGitGraphQL.Objects.OrgConfigEnableCollaboratorsOnlyAuditEntry
    case "OrgCreateAuditEntry": return TDGitGraphQL.Objects.OrgCreateAuditEntry
    case "OrgDisableOauthAppRestrictionsAuditEntry": return TDGitGraphQL.Objects.OrgDisableOauthAppRestrictionsAuditEntry
    case "OrgDisableSamlAuditEntry": return TDGitGraphQL.Objects.OrgDisableSamlAuditEntry
    case "OrgDisableTwoFactorRequirementAuditEntry": return TDGitGraphQL.Objects.OrgDisableTwoFactorRequirementAuditEntry
    case "OrgEnableOauthAppRestrictionsAuditEntry": return TDGitGraphQL.Objects.OrgEnableOauthAppRestrictionsAuditEntry
    case "OrgEnableSamlAuditEntry": return TDGitGraphQL.Objects.OrgEnableSamlAuditEntry
    case "OrgEnableTwoFactorRequirementAuditEntry": return TDGitGraphQL.Objects.OrgEnableTwoFactorRequirementAuditEntry
    case "OrgInviteMemberAuditEntry": return TDGitGraphQL.Objects.OrgInviteMemberAuditEntry
    case "OrgInviteToBusinessAuditEntry": return TDGitGraphQL.Objects.OrgInviteToBusinessAuditEntry
    case "OrgRemoveBillingManagerAuditEntry": return TDGitGraphQL.Objects.OrgRemoveBillingManagerAuditEntry
    case "OrgRemoveMemberAuditEntry": return TDGitGraphQL.Objects.OrgRemoveMemberAuditEntry
    case "OrgRemoveOutsideCollaboratorAuditEntry": return TDGitGraphQL.Objects.OrgRemoveOutsideCollaboratorAuditEntry
    case "OrgRestoreMemberAuditEntry": return TDGitGraphQL.Objects.OrgRestoreMemberAuditEntry
    case "OrgRestoreMemberMembershipOrganizationAuditEntryData": return TDGitGraphQL.Objects.OrgRestoreMemberMembershipOrganizationAuditEntryData
    case "OrgUnblockUserAuditEntry": return TDGitGraphQL.Objects.OrgUnblockUserAuditEntry
    case "OrgUpdateDefaultRepositoryPermissionAuditEntry": return TDGitGraphQL.Objects.OrgUpdateDefaultRepositoryPermissionAuditEntry
    case "OrgUpdateMemberAuditEntry": return TDGitGraphQL.Objects.OrgUpdateMemberAuditEntry
    case "OrgUpdateMemberRepositoryCreationPermissionAuditEntry": return TDGitGraphQL.Objects.OrgUpdateMemberRepositoryCreationPermissionAuditEntry
    case "OrgUpdateMemberRepositoryInvitationPermissionAuditEntry": return TDGitGraphQL.Objects.OrgUpdateMemberRepositoryInvitationPermissionAuditEntry
    case "PrivateRepositoryForkingDisableAuditEntry": return TDGitGraphQL.Objects.PrivateRepositoryForkingDisableAuditEntry
    case "OrgRestoreMemberMembershipRepositoryAuditEntryData": return TDGitGraphQL.Objects.OrgRestoreMemberMembershipRepositoryAuditEntryData
    case "PrivateRepositoryForkingEnableAuditEntry": return TDGitGraphQL.Objects.PrivateRepositoryForkingEnableAuditEntry
    case "RepoAccessAuditEntry": return TDGitGraphQL.Objects.RepoAccessAuditEntry
    case "RepoAddMemberAuditEntry": return TDGitGraphQL.Objects.RepoAddMemberAuditEntry
    case "RepoAddTopicAuditEntry": return TDGitGraphQL.Objects.RepoAddTopicAuditEntry
    case "RepoRemoveTopicAuditEntry": return TDGitGraphQL.Objects.RepoRemoveTopicAuditEntry
    case "RepoArchivedAuditEntry": return TDGitGraphQL.Objects.RepoArchivedAuditEntry
    case "RepoChangeMergeSettingAuditEntry": return TDGitGraphQL.Objects.RepoChangeMergeSettingAuditEntry
    case "RepoConfigDisableAnonymousGitAccessAuditEntry": return TDGitGraphQL.Objects.RepoConfigDisableAnonymousGitAccessAuditEntry
    case "RepoConfigDisableCollaboratorsOnlyAuditEntry": return TDGitGraphQL.Objects.RepoConfigDisableCollaboratorsOnlyAuditEntry
    case "RepoConfigDisableContributorsOnlyAuditEntry": return TDGitGraphQL.Objects.RepoConfigDisableContributorsOnlyAuditEntry
    case "RepoConfigDisableSockpuppetDisallowedAuditEntry": return TDGitGraphQL.Objects.RepoConfigDisableSockpuppetDisallowedAuditEntry
    case "RepoConfigEnableAnonymousGitAccessAuditEntry": return TDGitGraphQL.Objects.RepoConfigEnableAnonymousGitAccessAuditEntry
    case "RepoConfigEnableCollaboratorsOnlyAuditEntry": return TDGitGraphQL.Objects.RepoConfigEnableCollaboratorsOnlyAuditEntry
    case "RepoConfigEnableContributorsOnlyAuditEntry": return TDGitGraphQL.Objects.RepoConfigEnableContributorsOnlyAuditEntry
    case "RepoConfigEnableSockpuppetDisallowedAuditEntry": return TDGitGraphQL.Objects.RepoConfigEnableSockpuppetDisallowedAuditEntry
    case "RepoConfigLockAnonymousGitAccessAuditEntry": return TDGitGraphQL.Objects.RepoConfigLockAnonymousGitAccessAuditEntry
    case "RepoConfigUnlockAnonymousGitAccessAuditEntry": return TDGitGraphQL.Objects.RepoConfigUnlockAnonymousGitAccessAuditEntry
    case "RepoCreateAuditEntry": return TDGitGraphQL.Objects.RepoCreateAuditEntry
    case "RepoDestroyAuditEntry": return TDGitGraphQL.Objects.RepoDestroyAuditEntry
    case "RepoRemoveMemberAuditEntry": return TDGitGraphQL.Objects.RepoRemoveMemberAuditEntry
    case "TeamAddRepositoryAuditEntry": return TDGitGraphQL.Objects.TeamAddRepositoryAuditEntry
    case "OrgRestoreMemberMembershipTeamAuditEntryData": return TDGitGraphQL.Objects.OrgRestoreMemberMembershipTeamAuditEntryData
    case "TeamAddMemberAuditEntry": return TDGitGraphQL.Objects.TeamAddMemberAuditEntry
    case "TeamChangeParentTeamAuditEntry": return TDGitGraphQL.Objects.TeamChangeParentTeamAuditEntry
    case "TeamRemoveMemberAuditEntry": return TDGitGraphQL.Objects.TeamRemoveMemberAuditEntry
    case "TeamRemoveRepositoryAuditEntry": return TDGitGraphQL.Objects.TeamRemoveRepositoryAuditEntry
    case "RepositoryVisibilityChangeDisableAuditEntry": return TDGitGraphQL.Objects.RepositoryVisibilityChangeDisableAuditEntry
    case "RepositoryVisibilityChangeEnableAuditEntry": return TDGitGraphQL.Objects.RepositoryVisibilityChangeEnableAuditEntry
    case "MentionedEvent": return TDGitGraphQL.Objects.MentionedEvent
    case "MergeQueue": return TDGitGraphQL.Objects.MergeQueue
    case "MergeQueueEntry": return TDGitGraphQL.Objects.MergeQueueEntry
    case "MigrationSource": return TDGitGraphQL.Objects.MigrationSource
    case "MilestonedEvent": return TDGitGraphQL.Objects.MilestonedEvent
    case "MovedColumnsInProjectEvent": return TDGitGraphQL.Objects.MovedColumnsInProjectEvent
    case "OIDCProvider": return TDGitGraphQL.Objects.OIDCProvider
    case "OrganizationIdentityProvider": return TDGitGraphQL.Objects.OrganizationIdentityProvider
    case "OrganizationInvitation": return TDGitGraphQL.Objects.OrganizationInvitation
    case "OrganizationMigration": return TDGitGraphQL.Objects.OrganizationMigration
    case "Package": return TDGitGraphQL.Objects.Package
    case "PackageFile": return TDGitGraphQL.Objects.PackageFile
    case "PackageTag": return TDGitGraphQL.Objects.PackageTag
    case "PackageVersion": return TDGitGraphQL.Objects.PackageVersion
    case "PinnedEvent": return TDGitGraphQL.Objects.PinnedEvent
    case "PinnedIssue": return TDGitGraphQL.Objects.PinnedIssue
    case "ProjectCard": return TDGitGraphQL.Objects.ProjectCard
    case "ProjectColumn": return TDGitGraphQL.Objects.ProjectColumn
    case "ProjectV2Field": return TDGitGraphQL.Objects.ProjectV2Field
    case "ProjectV2IterationField": return TDGitGraphQL.Objects.ProjectV2IterationField
    case "ProjectV2SingleSelectField": return TDGitGraphQL.Objects.ProjectV2SingleSelectField
    case "ProjectV2Item": return TDGitGraphQL.Objects.ProjectV2Item
    case "ProjectV2ItemFieldDateValue": return TDGitGraphQL.Objects.ProjectV2ItemFieldDateValue
    case "ProjectV2ItemFieldIterationValue": return TDGitGraphQL.Objects.ProjectV2ItemFieldIterationValue
    case "ProjectV2ItemFieldNumberValue": return TDGitGraphQL.Objects.ProjectV2ItemFieldNumberValue
    case "ProjectV2ItemFieldSingleSelectValue": return TDGitGraphQL.Objects.ProjectV2ItemFieldSingleSelectValue
    case "ProjectV2ItemFieldTextValue": return TDGitGraphQL.Objects.ProjectV2ItemFieldTextValue
    case "ProjectV2View": return TDGitGraphQL.Objects.ProjectV2View
    case "ProjectV2Workflow": return TDGitGraphQL.Objects.ProjectV2Workflow
    case "PublicKey": return TDGitGraphQL.Objects.PublicKey
    case "PullRequestReviewThread": return TDGitGraphQL.Objects.PullRequestReviewThread
    case "PullRequestThread": return TDGitGraphQL.Objects.PullRequestThread
    case "Push": return TDGitGraphQL.Objects.Push
    case "PushAllowance": return TDGitGraphQL.Objects.PushAllowance
    case "Reaction": return TDGitGraphQL.Objects.Reaction
    case "Ref": return TDGitGraphQL.Objects.Ref
    case "ReferencedEvent": return TDGitGraphQL.Objects.ReferencedEvent
    case "ReleaseAsset": return TDGitGraphQL.Objects.ReleaseAsset
    case "RemovedFromMergeQueueEvent": return TDGitGraphQL.Objects.RemovedFromMergeQueueEvent
    case "RemovedFromProjectEvent": return TDGitGraphQL.Objects.RemovedFromProjectEvent
    case "RenamedTitleEvent": return TDGitGraphQL.Objects.RenamedTitleEvent
    case "ReopenedEvent": return TDGitGraphQL.Objects.ReopenedEvent
    case "RepositoryInvitation": return TDGitGraphQL.Objects.RepositoryInvitation
    case "RepositoryMigration": return TDGitGraphQL.Objects.RepositoryMigration
    case "RepositoryRule": return TDGitGraphQL.Objects.RepositoryRule
    case "RepositoryRuleset": return TDGitGraphQL.Objects.RepositoryRuleset
    case "RepositoryRulesetBypassActor": return TDGitGraphQL.Objects.RepositoryRulesetBypassActor
    case "ReviewDismissalAllowance": return TDGitGraphQL.Objects.ReviewDismissalAllowance
    case "ReviewRequest": return TDGitGraphQL.Objects.ReviewRequest
    case "ReviewRequestRemovedEvent": return TDGitGraphQL.Objects.ReviewRequestRemovedEvent
    case "ReviewRequestedEvent": return TDGitGraphQL.Objects.ReviewRequestedEvent
    case "SavedReply": return TDGitGraphQL.Objects.SavedReply
    case "SecurityAdvisory": return TDGitGraphQL.Objects.SecurityAdvisory
    case "SponsorsActivity": return TDGitGraphQL.Objects.SponsorsActivity
    case "SponsorsListing": return TDGitGraphQL.Objects.SponsorsListing
    case "SponsorsListingFeaturedItem": return TDGitGraphQL.Objects.SponsorsListingFeaturedItem
    case "SponsorsTier": return TDGitGraphQL.Objects.SponsorsTier
    case "Sponsorship": return TDGitGraphQL.Objects.Sponsorship
    case "SponsorshipNewsletter": return TDGitGraphQL.Objects.SponsorshipNewsletter
    case "Status": return TDGitGraphQL.Objects.Status
    case "StatusCheckRollup": return TDGitGraphQL.Objects.StatusCheckRollup
    case "SubscribedEvent": return TDGitGraphQL.Objects.SubscribedEvent
    case "TransferredEvent": return TDGitGraphQL.Objects.TransferredEvent
    case "UnassignedEvent": return TDGitGraphQL.Objects.UnassignedEvent
    case "UnlabeledEvent": return TDGitGraphQL.Objects.UnlabeledEvent
    case "UnlockedEvent": return TDGitGraphQL.Objects.UnlockedEvent
    case "UnmarkedAsDuplicateEvent": return TDGitGraphQL.Objects.UnmarkedAsDuplicateEvent
    case "UnpinnedEvent": return TDGitGraphQL.Objects.UnpinnedEvent
    case "UnsubscribedEvent": return TDGitGraphQL.Objects.UnsubscribedEvent
    case "UserBlockedEvent": return TDGitGraphQL.Objects.UserBlockedEvent
    case "UserContentEdit": return TDGitGraphQL.Objects.UserContentEdit
    case "UserStatus": return TDGitGraphQL.Objects.UserStatus
    case "VerifiableDomain": return TDGitGraphQL.Objects.VerifiableDomain
    case "RepositoryConnection": return TDGitGraphQL.Objects.RepositoryConnection
    case "RepositoryEdge": return TDGitGraphQL.Objects.RepositoryEdge
    case "StargazerConnection": return TDGitGraphQL.Objects.StargazerConnection
    case "PullRequestConnection": return TDGitGraphQL.Objects.PullRequestConnection
    case "PageInfo": return TDGitGraphQL.Objects.PageInfo
    case "RateLimit": return TDGitGraphQL.Objects.RateLimit
    case "RefConnection": return TDGitGraphQL.Objects.RefConnection
    case "TreeEntry": return TDGitGraphQL.Objects.TreeEntry
    case "RefEdge": return TDGitGraphQL.Objects.RefEdge
    case "CommitHistoryConnection": return TDGitGraphQL.Objects.CommitHistoryConnection
    case "PullRequestChangedFileConnection": return TDGitGraphQL.Objects.PullRequestChangedFileConnection
    case "PullRequestChangedFile": return TDGitGraphQL.Objects.PullRequestChangedFile
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
