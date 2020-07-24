include "com_linecorp_square_protocol_thrift_common.thrift"
include "h0_a_e_a_b.thrift"


struct ApprovalValue{
      1: string message;
}

struct Category{
      1: i32 id;
      2: string name;
}

struct CategoryName{
      1: i32 categoryId;
      2: map<string,string> names;
}

struct CodeValue{
      1: optional string code;
}

struct ErrorExtraInfo{
/*
enum com.linecorp.square.protocol.thrift.common.PreconditionFailedExtraInfo.class {
}
*/
      1: i32 preconditionFailedExtraInfo;
      2: UserRestrictionExtraInfo userRestrictionInfo;
}

struct NoteStatus{
      1: i32 noteCount;
      2: i64 latestCreatedAt;
}

struct PopularKeyword{
      1: string value;
      2: bool highlighted;
      3: i64 id;
}

struct Square{
     11: bool ableToUseInvitationTicket;
/*
enum com.linecorp.square.protocol.thrift.common.SquareState.class {
}
*/
     12: i32 state;
/*
enum com.linecorp.square.protocol.thrift.common.SquareEmblem.class {
}
*/
     13: optional list<i32> emblems;
     14: optional SquareJoinMethod joinMethod;
      1: string mid;
      2: string name;
      3: string welcomeMessage;
      4: string profileImageObsHash;
      5: string desc;
      6: bool searchable;
/*
enum com.linecorp.square.protocol.thrift.common.SquareType.class {
}
*/
      7: i32 type;
      8: i32 categoryId;
      9: string invitationURL;
     10: i64 revision;
}

struct SquareActivityScore{
      1: SquareCleanScore cleanScore;
}

struct SquareAuthority{
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
     12: i32 createSquareChatAnnouncement;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
     13: optional i32 updateMaxChatMemberCount;
      1: string squareMid;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
      2: i32 updateSquareProfile;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
      3: i32 inviteNewMember;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
      4: i32 approveJoinRequest;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
      5: i32 createPost;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
      6: i32 createOpenSquareChat;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
      7: i32 deleteSquareChatOrPost;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
      8: i32 removeSquareMember;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
      9: i32 grantRole;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
     10: i32 enableInvitationTicket;
     11: i64 revision;
}

struct SquareChat{
      1: string squareChatMid;
      2: string squareMid;
/*
enum com.linecorp.square.protocol.thrift.common.SquareChatType.class {
}
*/
      3: i32 type;
      4: string name;
      5: string chatImageObsHash;
      6: i64 squareChatRevision;
      7: i32 maxMemberCount;
/*
enum com.linecorp.square.protocol.thrift.common.SquareChatState.class {
}
*/
      8: i32 state;
      9: optional string invitationUrl;
}

struct SquareChatAnnouncement{
      1: i64 announcementSeq;
/*
enum com.linecorp.square.protocol.thrift.common.SquareChatAnnouncementType.class {
}
*/
      2: i32 type;
      3: SquareChatAnnouncementContents contents;
      4: optional i64 createdAt;
      5: optional string creator;
}

struct SquareChatAnnouncementContents{
      1: TextMessageAnnouncementContents textMessageAnnouncementContents;
}

struct SquareChatMember{
      1: string squareMemberMid;
      2: string squareChatMid;
      3: i64 revision;
/*
enum com.linecorp.square.protocol.thrift.common.SquareChatMembershipState.class {
}
*/
      4: i32 membershipState;
      5: bool notificationForMessage;
      6: optional bool notificationForNewMember;
}

struct SquareChatStatus{
      3: SquareMessage lastMessage;
      4: string senderDisplayName;
      5: SquareChatStatusWithoutMessage otherStatus;
}

struct SquareChatStatusWithoutMessage{
      1: i32 memberCount;
      2: i32 unreadMessageCount;
      3: optional string markedAsReadMessageId;
      4: optional string mentionedMessageId;
/*
enum com.linecorp.square.protocol.thrift.common.NotifiedMessageType.class {
}
*/
      5: optional i32 notifiedMessageType;
}

struct SquareCleanScore{
      1: double score;
}

struct SquareException{
/*
enum com.linecorp.square.protocol.thrift.common.SquareErrorCode.class {
}
*/
      1: i32 errorCode;
      2: optional ErrorExtraInfo errorExtraInfo;
      3: string reason;
}

struct SquareFeature{
/*
enum com.linecorp.square.protocol.thrift.common.SquareFeatureControlState.class {
}
*/
      1: i32 controlState;
/*
enum com.linecorp.square.protocol.thrift.common.BooleanState.class {
}
*/
      2: optional i32 booleanValue;
}

struct SquareFeatureSet{
      1: string squareMid;
      2: i64 revision;
     11: optional SquareFeature creatingSecretSquareChat;
     12: optional SquareFeature invitingIntoOpenSquareChat;
     13: optional SquareFeature creatingSquareChat;
}

struct SquareInfo{
      1: Square square;
      2: SquareStatus squareStatus;
      3: optional NoteStatus squareNoteStatus;
}

struct SquareJoinMethod{
/*
enum com.linecorp.square.protocol.thrift.common.SquareJoinMethodType.class {
}
*/
      1: i32 type;
      2: SquareJoinMethodValue value;
}

struct SquareJoinMethodValue{
      1: optional ApprovalValue approvalValue;
      2: optional CodeValue codeValue;
}

struct SquareMember{
      1: string squareMemberMid;
      2: string squareMid;
      3: string displayName;
      4: string profileImageObsHash;
      5: bool ableToReceiveMessage;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMembershipState.class {
}
*/
      7: i32 membershipState;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRole.class {
}
*/
      8: i32 role;
      9: i64 revision;
     10: optional SquarePreference preference;
     11: optional string joinMessage;
}

struct SquareMemberRelation{
/*
enum com.linecorp.square.protocol.thrift.common.SquareMemberRelationState.class {
}
*/
      1: i32 state;
      2: i64 revision;
}

struct SquareMessage{
      1: Message message;
/*
enum h0.a.e.a.b.ve.class {
}
*/
      3: i32 fromType;
      4: i64 squareMessageRevision;
/*
enum com.linecorp.square.protocol.thrift.common.SquareMessageState.class {
}
*/
      5: optional i32 state;
}

struct SquareMessageInfo{
      1: SquareMessage message;
      2: Square square;
      3: SquareChat chat;
      4: SquareMember sender;
}

struct SquarePreference{
      1: i64 favoriteTimestamp;
      2: bool notiForNewJoinRequest;
}

struct SquareStatus{
      1: i32 memberCount;
      2: optional i32 joinRequestCount;
      3: optional i64 lastJoinRequestAt;
      4: i32 openChatCount;
}

struct SquareVisibility{
      1: bool common;
      2: bool search;
}

struct TextMessageAnnouncementContents{
      1: string messageId;
      2: string text;
      3: string senderSquareMemberMid;
      4: i64 createdAt;
      5: optional string senderMid;
}

struct UserRestrictionExtraInfo{
      1: string linkUrl;
}

service _backing_thrift_info_src4_com_linecorp_square_protocol_thrift_common{
}


