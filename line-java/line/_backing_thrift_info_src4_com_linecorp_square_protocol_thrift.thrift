include "com_linecorp_square_protocol_thrift_common.thrift"
include "com_linecorp_square_protocol_thrift.thrift"


struct ApproveSquareMembersRequest{
      2: string squareMid;
      3: list<string> requestedMemberMids;
}

struct ApproveSquareMembersResponse{
      1: list<SquareMember> approvedMembers;
      2: SquareStatus status;
}

struct CheckJoinCodeRequest{
      2: string squareMid;
      3: string joinCode;
}

struct CheckJoinCodeResponse{
      1: string joinToken;
}

struct CreateSquareChatAnnouncementRequest{
      1: i32 reqSeq;
      2: string squareChatMid;
      3: SquareChatAnnouncement squareChatAnnouncement;
}

struct CreateSquareChatAnnouncementResponse{
      1: SquareChatAnnouncement announcement;
}

struct CreateSquareChatRequest{
      1: i32 reqSeq;
      2: SquareChat squareChat;
      3: list<string> squareMemberMids;
}

struct CreateSquareChatResponse{
      1: SquareChat squareChat;
      2: SquareChatStatus squareChatStatus;
      3: SquareChatMember squareChatMember;
}

struct CreateSquareRequest{
      1: i32 reqSeq;
      2: Square square;
      3: SquareMember creator;
}

struct CreateSquareResponse{
      1: Square square;
      2: SquareMember creator;
      3: SquareAuthority authority;
      4: SquareStatus status;
      5: optional SquareFeatureSet featureSet;
      6: optional NoteStatus noteStatus;
      7: optional SquareChat squareChat;
      8: optional SquareChatStatus squareChatStatus;
      9: optional SquareChatMember squareChatMember;
}

struct DeleteSquareChatAnnouncementRequest{
      2: string squareChatMid;
      3: i64 announcementSeq;
}

struct DeleteSquareChatAnnouncementResponse{
}

struct DeleteSquareChatRequest{
      2: string squareChatMid;
      3: i64 revision;
}

struct DeleteSquareChatResponse{
}

struct DeleteSquareRequest{
      2: string mid;
      3: i64 revision;
}

struct DeleteSquareResponse{
}

struct DestroyMessageRequest{
      2: string squareChatMid;
      4: string messageId;
}

struct DestroyMessageResponse{
}

struct DestroyMessagesRequest{
      2: string squareChatMid;
      4: set<string> messageIds;
}

struct DestroyMessagesResponse{
}

struct FetchMyEventsRequest{
      1: i64 subscriptionId;
      2: string syncToken;
      3: i32 limit;
      4: string continuationToken;
}

struct FetchMyEventsResponse{
      1: optional SubscriptionState subscription;
      2: list<SquareEvent> events;
      3: string syncToken;
      4: string continuationToken;
}

struct FetchSquareChatEventsRequest{
      1: i64 subscriptionId;
      2: string squareChatMid;
      3: string syncToken;
      4: i32 limit;
/*
enum com.linecorp.square.protocol.thrift.FetchDirection.class {
}
*/
      5: i32 direction;
/*
enum com.linecorp.square.protocol.thrift.common.BooleanState.class {
}
*/
      6: optional i32 inclusive;
}

struct FetchSquareChatEventsResponse{
      1: optional SubscriptionState subscription;
      2: list<SquareEvent> events;
      3: string syncToken;
      4: string continuationToken;
}

struct FindSquareByEmidRequest{
      1: string emid;
}

struct FindSquareByEmidResponse{
      1: Square square;
      2: SquareMember myMembership;
      3: SquareAuthority squareAuthority;
      4: SquareStatus squareStatus;
      5: optional SquareFeatureSet squareFeatureSet;
      6: optional NoteStatus noteStatus;
}

struct FindSquareByInvitationTicketRequest{
      2: string invitationTicket;
}

struct FindSquareByInvitationTicketResponse{
      1: Square square;
      2: SquareMember myMembership;
      3: SquareAuthority squareAuthority;
      4: SquareStatus squareStatus;
      5: optional SquareFeatureSet squareFeatureSet;
      6: optional NoteStatus noteStatus;
      7: optional SquareChat chat;
      8: optional SquareChatStatus chatStatus;
}

struct GetInvitationTicketUrlRequest{
      2: string mid;
}

struct GetInvitationTicketUrlResponse{
      1: string invitationURL;
}

struct GetJoinableSquareChatsRequest{
      1: string squareMid;
     10: string continuationToken;
     11: i32 limit;
}

struct GetJoinableSquareChatsResponse{
      1: list<SquareChat> squareChats;
      2: string continuationToken;
      3: i32 totalSquareChatCount;
      4: map<string,SquareChatStatus> squareChatStatuses;
}

struct GetJoinedSquareChatsRequest{
      2: string continuationToken;
      3: i32 limit;
}

struct GetJoinedSquareChatsResponse{
      1: list<SquareChat> chats;
      2: map<string,SquareChatMember> chatMembers;
      3: map<string,SquareChatStatus> statuses;
      4: string continuationToken;
}

struct GetJoinedSquaresRequest{
      2: string continuationToken;
      3: i32 limit;
}

struct GetJoinedSquaresResponse{
      1: list<Square> squares;
      2: map<string,SquareMember> members;
      3: map<string,SquareAuthority> authorities;
      4: map<string,SquareStatus> statuses;
      5: string continuationToken;
      6: optional map<string,NoteStatus> noteStatuses;
}

struct GetNoteStatusRequest{
      2: string squareMid;
}

struct GetNoteStatusResponse{
      1: string squareMid;
      2: NoteStatus status;
}

struct GetPopularKeywordsRequest{
}

struct GetPopularKeywordsResponse{
      1: list<PopularKeyword> popularKeywords;
      2: i64 expiredAt;
}

struct GetSquareAuthoritiesRequest{
      2: set<string> squareMids;
}

struct GetSquareAuthoritiesResponse{
      1: map<string,SquareAuthority> authorities;
}

struct GetSquareAuthorityRequest{
      1: string squareMid;
}

struct GetSquareAuthorityResponse{
      1: SquareAuthority authority;
}

struct GetSquareCategoriesRequest{
}

struct GetSquareCategoriesResponse{
      1: list<Category> categoryList;
}

struct GetSquareChatAnnouncementsRequest{
      2: string squareChatMid;
}

struct GetSquareChatAnnouncementsResponse{
      1: list<SquareChatAnnouncement> announcements;
}

struct GetSquareChatMemberRequest{
      2: string squareMemberMid;
      3: string squareChatMid;
}

struct GetSquareChatMemberResponse{
      1: SquareChatMember squareChatMember;
}

struct GetSquareChatMembersRequest{
      1: string squareChatMid;
      2: string continuationToken;
      3: i32 limit;
}

struct GetSquareChatMembersResponse{
      1: list<SquareMember> squareChatMembers;
      2: string continuationToken;
}

struct GetSquareChatRequest{
      1: string squareChatMid;
}

struct GetSquareChatResponse{
      1: SquareChat squareChat;
      2: SquareChatMember squareChatMember;
      3: SquareChatStatus squareChatStatus;
}

struct GetSquareChatStatusRequest{
      2: string squareChatMid;
}

struct GetSquareChatStatusResponse{
      1: SquareChatStatus chatStatus;
}

struct GetSquareFeatureSetRequest{
      2: string squareMid;
}

struct GetSquareFeatureSetResponse{
      1: SquareFeatureSet squareFeatureSet;
}

struct GetSquareMemberRelationRequest{
      2: string squareMid;
      3: string targetSquareMemberMid;
}

struct GetSquareMemberRelationResponse{
      1: string squareMid;
      2: string targetSquareMemberMid;
      3: SquareMemberRelation relation;
}

struct GetSquareMemberRelationsRequest{
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRelationState.class {
}
*/
      2: i32 state;
      3: string continuationToken;
      4: i32 limit;
}

struct GetSquareMemberRelationsResponse{
      1: list<SquareMember> squareMembers;
      2: map<string,SquareMemberRelation> relations;
      3: string continuationToken;
}

struct GetSquareMemberRequest{
      2: string squareMemberMid;
}

struct GetSquareMemberResponse{
      1: SquareMember squareMember;
      2: optional SquareMemberRelation relation;
      3: optional string oneOnOneChatMid;
}

struct GetSquareMembersRequest{
      2: set<string> mids;
}

struct GetSquareMembersResponse{
      1: map<string,SquareMember> members;
}

struct GetSquareRequest{
      2: string mid;
}

struct GetSquareResponse{
      1: Square square;
      2: SquareMember myMembership;
      3: SquareAuthority squareAuthority;
      4: SquareStatus squareStatus;
      5: optional SquareFeatureSet squareFeatureSet;
      6: optional NoteStatus noteStatus;
}

struct GetSquareStatusRequest{
      2: string squareMid;
}

struct GetSquareStatusResponse{
      1: SquareStatus squareStatus;
}

struct InviteIntoSquareChatRequest{
      1: list<string> inviteeMids;
      2: string squareChatMid;
}

struct InviteIntoSquareChatResponse{
      1: list<string> inviteeMids;
}

struct InviteToSquareRequest{
      2: string squareMid;
      3: list<string> invitees;
      4: optional string squareChatMid;
}

struct InviteToSquareResponse{
}

struct JoinSquareChatRequest{
      1: string squareChatMid;
}

struct JoinSquareChatResponse{
      1: SquareChat squareChat;
      2: SquareChatStatus squareChatStatus;
      3: SquareChatMember squareChatMember;
}

struct JoinSquareRequest{
      2: string squareMid;
      3: SquareMember member;
      4: optional string squareChatMid;
      5: optional SquareJoinMethodValue joinValue;
}

struct JoinSquareResponse{
      1: Square square;
      2: SquareAuthority squareAuthority;
      3: SquareStatus squareStatus;
      4: SquareMember squareMember;
      5: optional SquareFeatureSet squareFeatureSet;
      6: optional NoteStatus noteStatus;
      7: optional SquareChat squareChat;
      8: optional SquareChatStatus squareChatStatus;
      9: optional SquareChatMember squareChatMember;
}

struct LeaveSquareChatRequest{
      2: string squareChatMid;
      3: bool sayGoodbye;
      4: i64 squareChatMemberRevision;
}

struct LeaveSquareChatResponse{
}

struct LeaveSquareRequest{
      2: string squareMid;
}

struct LeaveSquareResponse{
}

struct MarkAsReadRequest{
      2: string squareChatMid;
      4: string messageId;
}

struct MarkAsReadResponse{
}

struct RefreshSubscriptionsRequest{
      2: list<i64> subscriptions;
}

struct RefreshSubscriptionsResponse{
      1: i64 ttlMillis;
      2: map<i64,SubscriptionState> subscriptionStates;
}

struct RejectSquareMembersRequest{
      2: string squareMid;
      3: list<string> requestedMemberMids;
}

struct RejectSquareMembersResponse{
      1: list<SquareMember> rejectedMembers;
      2: SquareStatus status;
}

struct RemoveSubscriptionsRequest{
      2: list<i64> unsubscriptions;
}

struct RemoveSubscriptionsResponse{
}

struct ReportSquareChatRequest{
      2: string squareMid;
      3: string squareChatMid;
/*
enum com.linecorp.square.protocol.thrift.ReportType.class {
}
*/
      5: i32 reportType;
      6: optional string otherReason;
}

struct ReportSquareChatResponse{
}

struct ReportSquareMemberRequest{
      2: string squareMemberMid;
/*
enum com.linecorp.square.protocol.thrift.ReportType.class {
}
*/
      3: i32 reportType;
      4: optional string otherReason;
      5: optional string squareChatMid;
}

struct ReportSquareMemberResponse{
}

struct ReportSquareMessageRequest{
      2: string squareMid;
      3: string squareChatMid;
      4: string squareMessageId;
/*
enum com.linecorp.square.protocol.thrift.ReportType.class {
}
*/
      5: i32 reportType;
      6: optional string otherReason;
}

struct ReportSquareMessageResponse{
}

struct ReportSquareRequest{
      2: string squareMid;
/*
enum com.linecorp.square.protocol.thrift.ReportType.class {
}
*/
      3: i32 reportType;
      4: optional string otherReason;
}

struct ReportSquareResponse{
}

struct SearchSquareChatMembersRequest{
      1: string squareChatMid;
      2: SquareChatMemberSearchOption searchOption;
      3: optional string continuationToken;
      4: i32 limit;
}

struct SearchSquareChatMembersResponse{
      1: list<SquareMember> members;
      2: optional string continuationToken;
}

struct SearchSquareMembersRequest{
      2: string squareMid;
      3: SquareMemberSearchOption searchOption;
      4: string continuationToken;
      5: i32 limit;
}

struct SearchSquareMembersResponse{
      1: list<SquareMember> members;
      2: i64 revision;
      3: string continuationToken;
      4: i32 totalCount;
}

struct SearchSquaresRequest{
      2: string query;
      3: string continuationToken;
      4: i32 limit;
}

struct SearchSquaresResponse{
      1: list<Square> squares;
      2: map<string,SquareStatus> squareStatuses;
      3: map<string,SquareMember> myMemberships;
      4: string continuationToken;
      5: optional map<string,NoteStatus> noteStatuses;
}

struct SendMessageRequest{
      1: i32 reqSeq;
      2: string squareChatMid;
      3: SquareMessage squareMessage;
}

struct SendMessageResponse{
      1: SquareMessage createdSquareMessage;
}

struct SquareChatMemberSearchOption{
      1: optional string displayName;
}

struct SquareEvent{
      2: i64 createdTime;
/*
enum com.linecorp.square.protocol.thrift.SquareEventType.class {
}
*/
      3: i32 type;
      4: SquareEventPayload payload;
      5: string syncToken;
/*
enum com.linecorp.square.protocol.thrift.SquareEventStatus.class {
}
*/
      6: optional i32 eventStatus;
}

struct SquareEventMutateMessage{
      1: string squareChatMid;
      2: SquareMessage squareMessage;
      3: i32 reqSeq;
      4: string senderDisplayName;
}

struct SquareEventNotificationJoinRequest{
      1: string squareMid;
      2: string squareName;
      3: string requestMemberName;
      4: string profileImageObsHash;
}

struct SquareEventNotificationMemberUpdate{
      1: string squareMid;
      2: string squareName;
      3: string profileImageObsHash;
}

struct SquareEventNotificationMessage{
      1: string squareChatMid;
      2: SquareMessage squareMessage;
      8: i32 reqSeq;
      3: string senderDisplayName;
      4: i32 unreadCount;
      5: bool requiredToFetchChatEvents;
      6: optional string mentionedMessageId;
/*
enum com.linecorp.square.protocol.thrift.common.NotifiedMessageType.class {
}
*/
      7: optional i32 notifiedMessageType;
}

struct SquareEventNotificationPost{
      1: string squareMid;
/*
enum com.linecorp.square.protocol.thrift.NotificationPostType.class {
}
*/
      2: i32 notificationPostType;
      3: string thumbnailObsHash;
      4: string text;
      5: string actionUri;
}

struct SquareEventNotificationPostAnnouncement{
      1: string squareMid;
      2: string squareName;
      3: string squareProfileImageObsHash;
      4: string actionUri;
}

struct SquareEventNotificationSquareChatDelete{
      1: string squareChatMid;
      2: string squareChatName;
      3: string profileImageObsHash;
}

struct SquareEventNotificationSquareDelete{
      1: string squareMid;
      2: string squareName;
      3: string profileImageObsHash;
}

struct SquareEventNotifiedAddBot{
      1: string squareChatMid;
      2: SquareMember squareMember;
      3: string botMid;
      4: string botDisplayName;
}

struct SquareEventNotifiedCreateSquareChatMember{
      1: SquareChat chat;
      2: SquareChatStatus chatStatus;
      3: SquareChatMember chatMember;
      4: i64 joinedAt;
      5: optional SquareMember peerSquareMember;
}

struct SquareEventNotifiedCreateSquareMember{
      1: Square square;
      2: SquareAuthority squareAuthority;
      3: SquareStatus squareStatus;
      4: SquareMember squareMember;
      5: optional SquareFeatureSet squareFeatureSet;
      6: optional NoteStatus noteStatus;
}

struct SquareEventNotifiedDeleteSquareChat{
      1: SquareChat squareChat;
}

struct SquareEventNotifiedDestroyMessage{
      1: string squareChatMid;
      3: string messageId;
}

struct SquareEventNotifiedInviteIntoSquareChat{
      1: string squareChatMid;
      2: list<SquareMember> invitees;
      3: SquareMember invitor;
      4: optional SquareMemberRelation invitorRelation;
}

struct SquareEventNotifiedJoinSquareChat{
      1: string squareChatMid;
      2: SquareMember joinedMember;
}

struct SquareEventNotifiedKickoutFromSquare{
      1: string squareChatMid;
      2: list<SquareMember> kickees;
}

struct SquareEventNotifiedLeaveSquareChat{
      1: string squareChatMid;
      2: string squareMemberMid;
      3: bool sayGoodbye;
      4: optional SquareMember squareMember;
}

struct SquareEventNotifiedMarkAsRead{
      1: string squareChatMid;
      2: string sMemberMid;
      4: string messageId;
}

struct SquareEventNotifiedRemoveBot{
      1: string squareChatMid;
      2: SquareMember squareMember;
      3: string botMid;
      4: string botDisplayName;
}

struct SquareEventNotifiedShutdownSquare{
      1: string squareChatMid;
      2: Square square;
}

struct SquareEventNotifiedUpdateSquare{
      1: string squareMid;
      2: Square square;
}

struct SquareEventNotifiedUpdateSquareAuthority{
      1: string squareMid;
      2: SquareAuthority squareAuthority;
}

struct SquareEventNotifiedUpdateSquareChat{
      1: string squareMid;
      2: string squareChatMid;
      3: SquareChat squareChat;
}

struct SquareEventNotifiedUpdateSquareChatAnnouncement{
      1: string squareChatMid;
      2: i64 announcementSeq;
}

struct SquareEventNotifiedUpdateSquareChatMaxMemberCount{
      1: string squareChatMid;
      2: i32 maxMemberCount;
      3: SquareMember editor;
}

struct SquareEventNotifiedUpdateSquareChatMember{
      1: string squareChatMid;
      3: SquareChatMember squareChatMember;
}

struct SquareEventNotifiedUpdateSquareChatProfileImage{
      1: string squareChatMid;
      2: SquareMember editor;
}

struct SquareEventNotifiedUpdateSquareChatProfileName{
      1: string squareChatMid;
      2: SquareMember editor;
      3: string updatedChatName;
}

struct SquareEventNotifiedUpdateSquareChatStatus{
      1: string squareChatMid;
      2: SquareChatStatusWithoutMessage statusWithoutMessage;
}

struct SquareEventNotifiedUpdateSquareFeatureSet{
      1: SquareFeatureSet squareFeatureSet;
}

struct SquareEventNotifiedUpdateSquareMember{
      1: string squareMid;
      2: string squareMemberMid;
      3: SquareMember squareMember;
}

struct SquareEventNotifiedUpdateSquareMemberProfile{
      1: string squareChatMid;
      2: SquareMember squareMember;
}

struct SquareEventNotifiedUpdateSquareMemberRelation{
      1: string squareMid;
      2: string myMemberMid;
      3: string targetSquareMemberMid;
      4: SquareMemberRelation squareMemberRelation;
}

struct SquareEventNotifiedUpdateSquareNoteStatus{
      1: string squareMid;
      2: NoteStatus noteStatus;
}

struct SquareEventNotifiedUpdateSquareStatus{
      1: string squareMid;
      2: SquareStatus squareStatus;
}

struct SquareEventPayload{
     17: SquareEventNotifiedCreateSquareChatMember notifiedCreateSquareChatMember;
     18: SquareEventNotifiedUpdateSquareMemberRelation notifiedUpdateSquareMemberRelation;
     33: SquareEventNotifiedUpdateSquareFeatureSet notifiedUpdateSquareFeatureSet;
     36: SquareEventNotifiedUpdateSquareNoteStatus notifiedUpdateSquareNoteStatus;
     37: SquareEventNotifiedUpdateSquareChatAnnouncement notifiedUpdateSquareChatAnnouncement;
     22: SquareEventNotificationJoinRequest notificationJoinRequest;
     23: SquareEventNotificationMemberUpdate notificationJoined;
     24: SquareEventNotificationMemberUpdate notificationPromoteCoadmin;
     25: SquareEventNotificationMemberUpdate notificationPromoteAdmin;
     26: SquareEventNotificationMemberUpdate notificationDemoteMember;
     27: SquareEventNotificationMemberUpdate notificationKickedOut;
     28: SquareEventNotificationSquareDelete notificationSquareDelete;
     29: SquareEventNotificationSquareChatDelete notificationSquareChatDelete;
     30: SquareEventNotificationMessage notificationMessage;
     39: SquareEventNotificationPostAnnouncement notificationPostAnnouncement;
     40: SquareEventNotificationPost notificationPost;
      1: SquareEventReceiveMessage receiveMessage;
      2: SquareEventSendMessage sendMessage;
     41: SquareEventMutateMessage mutateMessage;
      3: SquareEventNotifiedJoinSquareChat notifiedJoinSquareChat;
      4: SquareEventNotifiedInviteIntoSquareChat notifiedInviteIntoSquareChat;
      5: SquareEventNotifiedLeaveSquareChat notifiedLeaveSquareChat;
      6: SquareEventNotifiedDestroyMessage notifiedDestroyMessage;
      7: SquareEventNotifiedMarkAsRead notifiedMarkAsRead;
      8: SquareEventNotifiedUpdateSquareMemberProfile notifiedUpdateSquareMemberProfile;
     20: SquareEventNotifiedKickoutFromSquare notifiedKickoutFromSquare;
     19: SquareEventNotifiedShutdownSquare notifiedShutdownSquare;
     21: SquareEventNotifiedDeleteSquareChat notifiedDeleteSquareChat;
     31: SquareEventNotifiedUpdateSquareChatProfileName notifiedUpdateSquareChatProfileName;
     32: SquareEventNotifiedUpdateSquareChatProfileImage notifiedUpdateSquareChatProfileImage;
     38: SquareEventNotifiedUpdateSquareChatMaxMemberCount notifiedUpdateSquareChatMaxMemberCount;
     34: SquareEventNotifiedAddBot notifiedAddBot;
     35: SquareEventNotifiedRemoveBot notifiedRemoveBot;
      9: SquareEventNotifiedUpdateSquare notifiedUpdateSquare;
     14: SquareEventNotifiedUpdateSquareStatus notifiedUpdateSquareStatus;
     10: SquareEventNotifiedUpdateSquareMember notifiedUpdateSquareMember;
     11: SquareEventNotifiedUpdateSquareChat notifiedUpdateSquareChat;
     15: SquareEventNotifiedUpdateSquareChatStatus notifiedUpdateSquareChatStatus;
     12: SquareEventNotifiedUpdateSquareChatMember notifiedUpdateSquareChatMember;
     13: SquareEventNotifiedUpdateSquareAuthority notifiedUpdateSquareAuthority;
     16: SquareEventNotifiedCreateSquareMember notifiedCreateSquareMember;
}

struct SquareEventReceiveMessage{
      1: string squareChatMid;
      2: SquareMessage squareMessage;
      3: optional string senderDisplayName;
}

struct SquareEventSendMessage{
      1: string squareChatMid;
      2: SquareMessage squareMessage;
      3: i32 reqSeq;
      4: optional string senderDisplayName;
}

struct SquareMemberSearchOption{
/*
enum com.linecorp.square.protocol.thrift.common.SquareMembershipState.class {
}
*/
      1: i32 membershipState;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
      2: optional set<i32> memberRoles;
      3: optional string displayName;
/*
enum com.linecorp.square.protocol.thrift.common.BooleanState.class {
}
*/
      4: optional i32 ableToReceiveMessage;
/*
enum com.linecorp.square.protocol.thrift.common.BooleanState.class {
}
*/
      5: optional i32 ableToReceiveFriendRequest;
      6: optional string chatMidToExcludeMembers;
      7: bool includingMe;
      8: bool excludeBlockedMembers;
}

struct SubscriptionNotification{
      1: i64 subscriptionId;
}

struct SubscriptionState{
      1: i64 subscriptionId;
      2: i64 ttlMillis;
}

struct UnsendMessageRequest{
      2: string squareChatMid;
      3: string messageId;
}

struct UnsendMessageResponse{
      1: SquareMessage unsentMessage;
}

struct UpdateSquareAuthorityRequest{
/*
enum com.linecorp.square.protocol.thrift.common.SquareAuthorityAttribute.class {
}
*/
      2: set<i32> updateAttributes;
      3: SquareAuthority authority;
}

struct UpdateSquareAuthorityResponse{
/*
enum com.linecorp.square.protocol.thrift.common.SquareAuthorityAttribute.class {
}
*/
      1: set<i32> updatdAttributes;
      2: SquareAuthority authority;
}

struct UpdateSquareChatMemberRequest{
/*
enum com.linecorp.square.protocol.thrift.common.SquareChatMemberAttribute.class {
}
*/
      2: set<i32> updatedAttrs;
      3: SquareChatMember chatMember;
}

struct UpdateSquareChatMemberResponse{
      1: SquareChatMember updatedChatMember;
}

struct UpdateSquareChatRequest{
/*
enum com.linecorp.square.protocol.thrift.common.SquareChatAttribute.class {
}
*/
      2: set<i32> updatedAttrs;
      3: SquareChat squareChat;
}

struct UpdateSquareChatResponse{
/*
enum com.linecorp.square.protocol.thrift.common.SquareChatAttribute.class {
}
*/
      1: set<i32> updatedAttrs;
      2: SquareChat squareChat;
}

struct UpdateSquareFeatureSetRequest{
/*
enum com.linecorp.square.protocol.thrift.common.SquareFeatureSetAttribute.class {
}
*/
      2: set<i32> updateAttributes;
      3: SquareFeatureSet squareFeatureSet;
}

struct UpdateSquareFeatureSetResponse{
/*
enum com.linecorp.square.protocol.thrift.common.SquareFeatureSetAttribute.class {
}
*/
      1: set<i32> updateAttributes;
      2: SquareFeatureSet squareFeatureSet;
}

struct UpdateSquareMemberRelationRequest{
      2: string squareMid;
      3: string targetSquareMemberMid;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRelationAttribute.class {
}
*/
      4: set<i32> updatedAttrs;
      5: SquareMemberRelation relation;
}

struct UpdateSquareMemberRelationResponse{
      1: string squareMid;
      2: string targetSquareMemberMid;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRelationAttribute.class {
}
*/
      3: set<i32> updatedAttrs;
      4: SquareMemberRelation relation;
}

struct UpdateSquareMemberRequest{
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberAttribute.class {
}
*/
      2: set<i32> updatedAttrs;
/*
enum com.linecorp.square.protocol.thrift.common.SquarePreferenceAttribute.class {
}
*/
      3: set<i32> updatedPreferenceAttrs;
      4: SquareMember squareMember;
}

struct UpdateSquareMemberResponse{
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberAttribute.class {
}
*/
      1: set<i32> updatedAttrs;
      2: SquareMember squareMember;
/*
enum com.linecorp.square.protocol.thrift.common.SquarePreferenceAttribute.class {
}
*/
      3: set<i32> updatedPreferenceAttrs;
}

struct UpdateSquareMembersRequest{
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberAttribute.class {
}
*/
      2: set<i32> updatedAttrs;
      3: list<SquareMember> members;
}

struct UpdateSquareMembersResponse{
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberAttribute.class {
}
*/
      1: set<i32> updatedAttrs;
      2: optional SquareMember editor;
      3: map<string,SquareMember> members;
}

struct UpdateSquareRequest{
/*
enum com.linecorp.square.protocol.thrift.common.SquareAttribute.class {
}
*/
      2: set<i32> updatedAttrs;
      3: Square square;
}

struct UpdateSquareResponse{
/*
enum com.linecorp.square.protocol.thrift.common.SquareAttribute.class {
}
*/
      1: set<i32> updatedAttrs;
      2: Square square;
}

service _backing_thrift_info_src4_com_linecorp_square_protocol_thrift{
    SearchSquareChatMembersResponse searchSquareChatMembers(
        1 : SearchSquareChatMembersRequest request
    )throws(1: SquareException e);

    UnsendMessageResponse unsendMessage(
        1 : UnsendMessageRequest request
    )throws(1: SquareException e);

    CreateSquareResponse createSquare(
        1 : CreateSquareRequest request
    )throws(1: SquareException e);

    GetSquareMembersResponse getSquareMembers(
        1 : GetSquareMembersRequest request
    )throws(1: SquareException e);

    ReportSquareResponse reportSquare(
        1 : ReportSquareRequest request
    )throws(1: SquareException e);

    UpdateSquareChatResponse updateSquareChat(
        1 : UpdateSquareChatRequest request
    )throws(1: SquareException e);

    UpdateSquareMemberRelationResponse updateSquareMemberRelation(
        1 : UpdateSquareMemberRelationRequest request
    )throws(1: SquareException e);

    UpdateSquareMembersResponse updateSquareMembers(
        1 : UpdateSquareMembersRequest request
    )throws(1: SquareException e);

    GetJoinableSquareChatsResponse getJoinableSquareChats(
        1 : GetJoinableSquareChatsRequest request
    )throws(1: SquareException e);

    GetJoinedSquaresResponse getJoinedSquares(
        1 : GetJoinedSquaresRequest request
    )throws(1: SquareException e);

    GetSquareMemberRelationsResponse getSquareMemberRelations(
        1 : GetSquareMemberRelationsRequest request
    )throws(1: SquareException e);

    UpdateSquareMemberResponse updateSquareMember(
        1 : UpdateSquareMemberRequest request
    )throws(1: SquareException e);

    ApproveSquareMembersResponse approveSquareMembers(
        1 : ApproveSquareMembersRequest request
    )throws(1: SquareException e);

    DeleteSquareChatResponse deleteSquareChat(
        1 : DeleteSquareChatRequest request
    )throws(1: SquareException e);

    UpdateSquareChatMemberResponse updateSquareChatMember(
        1 : UpdateSquareChatMemberRequest request
    )throws(1: SquareException e);

    GetSquareChatResponse getSquareChat(
        1 : GetSquareChatRequest request
    )throws(1: SquareException e);

    LeaveSquareResponse leaveSquare(
        1 : LeaveSquareRequest request
    )throws(1: SquareException e);

    DeleteSquareResponse deleteSquare(
        1 : DeleteSquareRequest request
    )throws(1: SquareException e);

    FindSquareByEmidResponse findSquareByEmid(
        1 : FindSquareByEmidRequest findSquareByEmidRequest
    )throws(1: SquareException e);

    GetNoteStatusResponse getNoteStatus(
        1 : GetNoteStatusRequest request
    )throws(1: SquareException e);

    RemoveSubscriptionsResponse removeSubscriptions(
        1 : RemoveSubscriptionsRequest request
    )throws(1: SquareException e);

    ReportSquareMemberResponse reportSquareMember(
        1 : ReportSquareMemberRequest request
    )throws(1: SquareException e);

    UpdateSquareFeatureSetResponse updateSquareFeatureSet(
        1 : UpdateSquareFeatureSetRequest request
    )throws(1: SquareException e);

    FindSquareByInvitationTicketResponse findSquareByInvitationTicket(
        1 : FindSquareByInvitationTicketRequest request
    )throws(1: SquareException e);

    GetSquareCategoriesResponse getCategories(
        1 : GetSquareCategoriesRequest request
    )throws(1: SquareException e);

    GetSquareChatStatusResponse getSquareChatStatus(
        1 : GetSquareChatStatusRequest request
    )throws(1: SquareException e);

    LeaveSquareChatResponse leaveSquareChat(
        1 : LeaveSquareChatRequest request
    )throws(1: SquareException e);

    CheckJoinCodeResponse checkJoinCode(
        1 : CheckJoinCodeRequest request
    )throws(1: SquareException e);

    GetSquareChatMemberResponse getSquareChatMember(
        1 : GetSquareChatMemberRequest request
    )throws(1: SquareException e);

    InviteToSquareResponse inviteToSquare(
        1 : InviteToSquareRequest request
    )throws(1: SquareException e);

    SearchSquaresResponse searchSquares(
        1 : SearchSquaresRequest request
    )throws(1: SquareException e);

    CreateSquareChatResponse createSquareChat(
        1 : CreateSquareChatRequest request
    )throws(1: SquareException e);

    DeleteSquareChatAnnouncementResponse deleteSquareChatAnnouncement(
        1 : DeleteSquareChatAnnouncementRequest deleteSquareChatAnnouncementRequest
    )throws(1: SquareException e);

    GetSquareResponse getSquare(
        1 : GetSquareRequest request
    )throws(1: SquareException e);

    GetSquareFeatureSetResponse getSquareFeatureSet(
        1 : GetSquareFeatureSetRequest request
    )throws(1: SquareException e);

    RefreshSubscriptionsResponse refreshSubscriptions(
        1 : RefreshSubscriptionsRequest request
    )throws(1: SquareException e);

    GetSquareMemberRelationResponse getSquareMemberRelation(
        1 : GetSquareMemberRelationRequest request
    )throws(1: SquareException e);

    InviteIntoSquareChatResponse inviteIntoSquareChat(
        1 : InviteIntoSquareChatRequest request
    )throws(1: SquareException e);

    MarkAsReadResponse markAsRead(
        1 : MarkAsReadRequest request
    )throws(1: SquareException e);

    SearchSquareMembersResponse searchSquareMembers(
        1 : SearchSquareMembersRequest request
    )throws(1: SquareException e);

    UpdateSquareAuthorityResponse updateSquareAuthority(
        1 : UpdateSquareAuthorityRequest request
    )throws(1: SquareException e);

    GetSquareAuthoritiesResponse getSquareAuthorities(
        1 : GetSquareAuthoritiesRequest request
    )throws(1: SquareException e);

    GetSquareChatMembersResponse getSquareChatMembers(
        1 : GetSquareChatMembersRequest request
    )throws(1: SquareException e);

    ReportSquareChatResponse reportSquareChat(
        1 : ReportSquareChatRequest request
    )throws(1: SquareException e);

    ReportSquareMessageResponse reportSquareMessage(
        1 : ReportSquareMessageRequest request
    )throws(1: SquareException e);

    GetJoinedSquareChatsResponse getJoinedSquareChats(
        1 : GetJoinedSquareChatsRequest request
    )throws(1: SquareException e);

    JoinSquareResponse joinSquare(
        1 : JoinSquareRequest request
    )throws(1: SquareException e);

    GetPopularKeywordsResponse getPopularKeywords(
        1 : GetPopularKeywordsRequest request
    )throws(1: SquareException e);

    GetSquareStatusResponse getSquareStatus(
        1 : GetSquareStatusRequest request
    )throws(1: SquareException e);

    SendMessageResponse sendMessage(
        1 : SendMessageRequest request
    )throws(1: SquareException e);

    CreateSquareChatAnnouncementResponse createSquareChatAnnouncement(
        1 : CreateSquareChatAnnouncementRequest createSquareChatAnnouncementRequest
    )throws(1: SquareException e);

    DestroyMessagesResponse destroyMessages(
        1 : DestroyMessagesRequest request
    )throws(1: SquareException e);

    GetSquareChatAnnouncementsResponse getSquareChatAnnouncements(
        1 : GetSquareChatAnnouncementsRequest getSquareChatAnnouncementsRequest
    )throws(1: SquareException e);

    JoinSquareChatResponse joinSquareChat(
        1 : JoinSquareChatRequest request
    )throws(1: SquareException e);

    FetchMyEventsResponse fetchMyEvents(
        1 : FetchMyEventsRequest request
    )throws(1: SquareException e);

    FetchSquareChatEventsResponse fetchSquareChatEvents(
        1 : FetchSquareChatEventsRequest request
    )throws(1: SquareException e);

    GetSquareAuthorityResponse getSquareAuthority(
        1 : GetSquareAuthorityRequest request
    )throws(1: SquareException e);

    GetSquareMemberResponse getSquareMember(
        1 : GetSquareMemberRequest request
    )throws(1: SquareException e);

    RejectSquareMembersResponse rejectSquareMembers(
        1 : RejectSquareMembersRequest request
    )throws(1: SquareException e);

    UpdateSquareResponse updateSquare(
        1 : UpdateSquareRequest request
    )throws(1: SquareException e);

    DestroyMessageResponse destroyMessage(
        1 : DestroyMessageRequest request
    )throws(1: SquareException e);

    GetInvitationTicketUrlResponse getInvitationTicketUrl(
        1 : GetInvitationTicketUrlRequest request
    )throws(1: SquareException e);

}


