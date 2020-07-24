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
     12: i32 state;
     13: optional list<i32> emblems;
     14: optional SquareJoinMethod joinMethod;
      1: string mid;
      2: string name;
      3: string welcomeMessage;
      4: string profileImageObsHash;
      5: string desc;
      6: bool searchable;
      7: i32 type;
      8: i32 categoryId;
      9: string invitationURL;
     10: i64 revision;
}

struct SquareActivityScore{
      1: SquareCleanScore cleanScore;
}

struct SquareAuthority{
     12: i32 createSquareChatAnnouncement;
     13: optional i32 updateMaxChatMemberCount;
      1: string squareMid;
      2: i32 updateSquareProfile;
      3: i32 inviteNewMember;
      4: i32 approveJoinRequest;
      5: i32 createPost;
      6: i32 createOpenSquareChat;
      7: i32 deleteSquareChatOrPost;
      8: i32 removeSquareMember;
      9: i32 grantRole;
     10: i32 enableInvitationTicket;
     11: i64 revision;
}

struct SquareChat{
      1: string squareChatMid;
      2: string squareMid;
      3: i32 type;
      4: string name;
      5: string chatImageObsHash;
      6: i64 squareChatRevision;
      7: i32 maxMemberCount;
      8: i32 state;
      9: optional string invitationUrl;
}

struct SquareChatAnnouncement{
      1: i64 announcementSeq;
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
      5: optional i32 notifiedMessageType;
}

struct SquareCleanScore{
      1: double score;
}

struct SquareException{
      1: i32 errorCode;
      2: optional ErrorExtraInfo errorExtraInfo;
      3: string reason;
}

struct SquareFeature{
      1: i32 controlState;
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
      7: i32 membershipState;
      8: i32 role;
      9: i64 revision;
     10: optional SquarePreference preference;
     11: optional string joinMessage;
}

struct SquareMemberRelation{
      1: i32 state;
      2: i64 revision;
}

struct SquareMessage{
      1: Message message;
      3: i32 fromType;
      4: i64 squareMessageRevision;
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

service com_linecorp_square_protocol_thrift_common{
}

