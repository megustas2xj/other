

struct Operation{
      1: i64 revision;
      2: i64 createdTime;
      3: i32 type;
      4: i32 reqSeq;
      5: string checksum;
      7: i32 status;
     10: string param1;
     11: string param2;
     12: string param3;
     20: Message message;
}

struct AbuseMessage{
      1: i64 messageId;
      2: string message;
      3: string senderMid;
      4: i32 contentType;
      5: i64 createdTime;
      6: map<string,string> metadata;
}

struct AuthKeyExchangeResponse{
      1: string publicKey;
      2: string nonce;
}

struct UpdateChatRequest{
      1: i32 reqSeq;
      2: Chat chat;
      3: i32 updatedAttribute;
}

struct BuddyWebChatBarItem{
      1: string label;
      2: string url;
}

struct Configurations{
      1: i64 revision;
      2: map<string,string> configMap;
}

struct E2EENegotiationResult{
      1: set<i32> allowedTypes;
      2: E2EEPublicKey publicKey;
      3: i32 specVersion;
}

struct FriendRequest{
      1: string eMid;
      2: string mid;
      3: i32 direction;
      4: i32 method;
      5: string param;
      6: i64 timestamp;
      7: i64 seqId;
     10: string displayName;
     11: string picturePath;
     12: string pictureStatus;
}

struct GetPreviousMessagesV2Request{
      1: string messageBoxId;
      2: MessageBoxV2MessageId endMessageId;
      3: i32 messagesCount;
      4: optional bool withReadCount;
      5: optional bool receivedOnly;
}

struct RSAKey{
      1: string keynm;
      2: string nvalue;
      3: string evalue;
      4: string sessionKey;
}

struct AbuseReport{
      1: i32 reportSource;
      2: i32 applicationType;
      3: list<i32> spammerReasons;
      4: list<AbuseMessage> abuseMessages;
      5: map<string,string> metadata;
}

struct BuddySearchResult{
      1: string mid;
      2: string displayName;
      3: string pictureStatus;
      4: string picturePath;
      5: string statusMessage;
      6: bool businessAccount;
      7: i32 iconType;
      8: i32 botType;
}

struct UpdateChatResponse{
}

struct BuddyWidget{
      1: string icon;
      2: string label;
      3: string url;
}

struct ChannelException{
      1: i32 code;
      2: string reason;
      3: map<string,string> parameterMap;
}

struct ChatRoomBGM{
      1: string creatorMid;
      2: i64 createdTime;
      3: string chatRoomBGMInfo;
}

struct Contact{
      1: string mid;
      2: i64 createdTime;
     10: i32 type;
     11: i32 status;
     21: i32 relation;
     22: string displayName;
     23: string phoneticName;
     24: string pictureStatus;
     25: string thumbnailUrl;
     26: string statusMessage;
     27: string displayNameOverridden;
     28: i64 favoriteTime;
     31: bool capableVoiceCall;
     32: bool capableVideoCall;
     33: bool capableMyhome;
     34: bool capableBuddy;
     35: i32 attributes;
     36: i64 settings;
     37: string picturePath;
     38: string recommendParams;
     39: i32 friendRequestStatus;
     40: string musicProfile;
     42: string videoProfile;
     43: map<string,string> statusMessageContentMetadata;
     44: optional AvatarProfile avatarProfile;
}

struct E2EEPublicKey{
      1: i32 version;
      2: i32 keyId;
      4: string keyData;
      5: i64 createdTime;
}

struct GetTotalCoinBalanceRequest{
      1: i32 appStoreCode;
}

struct PeerExtra{
}

struct RegisterWithPhoneNumberResult{
      1: string authToken;
      2: bool recommendEmailRegistration;
      3: optional string certificate;
}

struct AcceptChatInvitationByTicketRequest{
      1: i32 reqSeq;
      2: string chatMid;
      3: string ticketId;
}

struct AuthLoginRequest{
      1: i32 authLoginVersion;
      2: map<string,string> metaData;
      3: string cipherText;
}

struct UpdateProfileAttributesRequest{
      1: map<i32,ProfileContent> profileAttributes;
}

struct BuddyWidgetListCharBarItem{
      1: string label;
      2: list<BuddyWidget> widgets;
      3: bool selected;
}

struct EmailConfirmationResult{
      1: string certificate;
}

struct GetTotalCoinBalanceResponse{
      1: string totalBalance;
      2: string paidCoinBalance;
      3: string freeCoinBalance;
      4: string rewardCoinBalance;
      5: string expectedAutoExchangedCoinBalance;
}

struct MoretabRecommend{
      1: list<MoretabRecommendAccount> accounts;
      2: i64 nextUpdateTime;
      3: i64 cacheTtlMillis;
}

struct PendingAgreementsResponse{
      1: list<i32> pendingAgreements;
}

struct RegisterWithSnsIdResult{
      1: string authToken;
      2: bool userCreated;
      3: bool recommendEmailRegistration;
}

struct AcceptChatInvitationByTicketResponse{
}

struct AuthLoginResponse{
      1: map<string,string> metaData;
      2: string cipherText;
}

struct ChannelIdWithLastUpdated{
      1: string channelId;
      2: i64 lastUpdated;
}

struct ClientNetworkStatus{
      1: i32 networkType;
}

struct EmailConfirmationSession{
      1: i32 emailConfirmationType;
      2: string verifier;
      3: string targetEmail;
}

struct Group{
     40: list<string> memberMids;
     41: list<string> inviteeMids;
      1: string id;
      2: i64 createdTime;
     10: string name;
     11: string pictureStatus;
     12: bool preventedJoinByTicket;
     13: GroupPreference groupPreference;
     20: list<Contact> members;
     21: Contact creator;
     22: list<Contact> invitee;
     31: bool notificationDisabled;
     32: string picturePath;
}

struct MoretabRecommendAccount{
      1: string mid;
      2: string displayName;
      3: string statusMessage;
      4: string pictureStatus;
      5: string picturePath;
}

struct SnsIdUserStatus{
      1: bool userExisting;
      2: bool phoneNumberRegistered;
      3: bool sameDevice;
      4: i32 accountMigrationCheckType;
}

struct AcceptChatInvitationRequest{
      1: i32 reqSeq;
      2: string chatMid;
}

struct UserAuthStatus{
      1: bool phoneNumberRegistered;
      2: list<i32> registeredSnsIdTypes;
      3: i32 accountMigrationCheckType;
}

struct CallHost{
      1: string host;
      2: i32 port;
      3: string zone;
}

struct ChannelInfo{
     12: list<i32> channelConfigurations;
     13: bool lcsAllApiUsable;
     14: set<i32> allowedPermissions;
     15: list<ChannelDomain> channelDomains;
     16: i64 updatedTimestamp;
     17: set<i32> featureLicenses;
      1: string channelId;
      3: string name;
      4: string entryPageUrl;
      5: string descriptionText;
      6: ChannelProvider provider;
      7: i32 publicType;
      8: string iconImage;
      9: list<string> permissions;
     11: string iconThumbnailImage;
}

struct FriendRequestsInfo{
      1: i32 totalIncomingCount;
      2: i32 totalOutgoingCount;
      3: list<FriendRequest> recentIncomings;
      4: list<FriendRequest> recentOutgoings;
      5: i32 totalIncomingLimit;
      6: i32 totalOutgoingLimit;
}

struct GroupCall{
      1: bool online;
      2: string chatMid;
      3: string hostMid;
      4: list<string> memberMids;
      5: i64 started;
      6: i32 mediaType;
      7: i32 protocol;
}

struct NearbyEntry{
      1: string emid;
      2: double distance;
      3: i32 lastUpdatedInSec;
      4: map<string,string> property;
      5: Profile profile;
}

struct ReissueChatTicketRequest{
      1: i32 reqSeq;
      2: string groupMid;
}

struct SnsProfile{
      1: string snsUserId;
      2: string snsUserName;
      3: string email;
      4: string thumbnailUrl;
}

struct AcceptChatInvitationResponse{
}

struct CallRoute{
     10: optional string toMid;
     11: optional string tunneling;
     12: optional string commParam;
     13: optional string stid;
     14: optional string encFromMid;
     15: optional string encToMid;
      1: string fromToken;
      2: i32 callFlowType;
      3: string voipAddress;
      4: i32 voipUdpPort;
      5: optional i32 voipTcpPort;
      6: string fromZone;
      7: string toZone;
      8: bool fakeCall;
      9: optional string ringbackTone;
}

struct ChannelNotificationSetting{
      1: string channelId;
      2: string name;
      3: bool notificationReceivable;
      4: bool messageReceivable;
      5: bool showDefault;
}

struct Coin{
      1: i32 freeCoinBalance;
      2: i32 payedCoinBalance;
      3: i32 totalCoinBalance;
      4: i32 rewardCoinBalance;
}

struct ContactModification{
      1: i32 type;
      2: string luid;
     11: list<string> phones;
     12: list<string> emails;
     13: list<string> userids;
     14: optional string mobileContactName;
     15: optional string phoneticName;
}

struct Geolocation{
      1: double longitude;
      2: double latitude;
      3: optional GeolocationAccuracy accuracy;
      4: optional double altitudeMeters;
      5: optional double velocityMetersPerSecond;
      6: optional double bearingDegrees;
}

struct ReissueChatTicketResponse{
      1: string ticketId;
}

struct CoinHistory{
      1: i64 payDate;
      2: i32 coinBalance;
      3: i32 coin;
      4: string price;
      5: string title;
      6: bool refund;
      7: string paySeq;
      8: string currency;
      9: string currencySign;
     10: string displayPrice;
     11: CoinPayLoad payload;
     12: string channelId;
}

struct ContactRegistration{
     10: string luid;
     11: i32 contactType;
     12: string contactKey;
      1: Contact contact;
}

struct GeolocationAccuracy{
      1: double radiusMeters;
      2: double radiusConfidence;
      3: optional double altitudeAccuracy;
      4: optional double velocityAccuracy;
      5: optional double bearingAccuracy;
}

struct RejectChatInvitationRequest{
      1: i32 reqSeq;
      2: string chatMid;
}

struct ChannelProvider{
      1: string name;
      2: optional bool certified;
}

struct CoinHistoryCondition{
      1: i64 start;
      2: i32 size;
      3: string language;
      4: string eddt;
      5: i32 appStoreCode;
}

struct ExtendedMessageBox{
      1: required string id;
      2: i32 midType;
      4: MessageBoxV2MessageId lastDeliveredMessageId;
      5: optional i64 lastSeenMessageId;
      6: optional i64 unreadCount;
      7: optional list<Message> lastMessages;
      8: optional i64 lastRemovedMessageId;
      9: optional i64 lastRemovedTime;
}

struct GetAllChatMidsRequest{
      1: optional bool withMemberChats;
      2: optional bool withInvitedChats;
}

struct GroupCallRoute{
     10: string fromZone;
     11: string commParam;
     12: string polarisAddress;
     13: i32 polarisUdpPort;
     14: string polarisZone;
     15: string orionAddress;
      1: string token;
      2: CallHost cscf;
      3: CallHost mix;
      4: string hostMid;
      5: list<string> capabilities;
      6: i32 proto;
      7: string voipAddress;
      8: i32 voipUdpPort;
      9: i32 voipTcpPort;
}

struct PhoneVerificationResult{
      1: i32 verificationResult;
      2: i32 accountMigrationCheckType;
      3: bool recommendAddFriends;
}

struct RejectChatInvitationResponse{
}

struct SpotItem{
      2: string name;
      3: string phone;
      4: i32 category;
      5: string mid;
      6: string countryAreaCode;
     10: bool freePhoneCallable;
}

struct AgeCheckDocomoResult{
      1: string authUrl;
      2: i32 userAgeType;
}

struct CoinHistoryResult{
      1: list<CoinHistory> historys;
      2: Coin balance;
      3: bool hasNext;
}

struct ExtendedProfile{
      1: ExtendedProfileBirthday birthday;
}

struct GetAllChatMidsResponse{
      1: set<string> memberChatMids;
      2: set<string> invitedChatMids;
}

struct GroupExtra{
      1: string creator;
      2: bool preventedJoinByTicket;
      3: optional string invitationTicket;
      4: map<string,string> memberMids;
      5: map<string,string> inviteeMids;
}

struct PlaceSearchInfo{
      1: string name;
      2: string address;
      3: double latitude;
      4: double longitude;
      5: string categoryId;
}

struct RemoveFollowerRequest{
      1: FollowMid followMid;
}

struct AgeCheckRequestResult{
      1: string authUrl;
      2: string sessionId;
}

struct AuthSessionRequest{
      1: map<string,string> metaData;
}

struct CoinPayLoad{
      1: i32 payCoin;
      2: i32 freeCoin;
      3: i32 type;
      4: i32 rewardCoin;
}

struct GetBalanceRequest{
}

struct GroupPreference{
     11: string invitationTicket;
     12: i64 favoriteTimestamp;
}

struct PaidCallAdCountry{
      1: string countryCode;
      2: string rateDivision;
}

struct AvatarProfile{
      1: string version;
      2: i64 updatedMillis;
      3: string thumbnail;
}

struct CoinProductItem{
      1: string itemId;
      2: i32 coin;
      3: i32 freeCoin;
      5: string currency;
      6: string price;
      7: string displayPrice;
      8: string name;
      9: string desc;
}

struct ExtendedProfileBirthday{
      1: string year;
      2: i32 yearPrivacyLevelType;
      3: bool yearEnabled;
      5: string day;
      6: i32 dayPrivacyLevelType;
      7: bool dayEnabled;
}

struct GetBalanceResponse{
      1: Balance balance;
}

struct IdentifierConfirmationRequest{
      1: map<string,string> metaData;
      2: bool forceRegistration;
      3: string verificationCode;
}

struct PaidCallAdResult{
      1: i32 adRemains;
}

struct RequestTokenResponse{
      1: string requestToken;
      2: string returnUrl;
}

struct Balance{
      1: string currentPointsFixedPointDecimal;
}

struct CoinPurchaseReservation{
      1: string productId;
      2: string country;
      3: string currency;
      4: string price;
      5: i32 appStoreCode;
      6: string language;
      7: i32 pgCode;
      8: string redirectUrl;
}

struct GetBuddyChatBarRequest{
      1: string buddyMid;
      2: i64 chatBarRevision;
      3: string richMenuId;
}

struct IdentityCredential{
      1: i32 provider;
      2: string identifier;
      3: string password;
}

struct PaidCallBalance{
      1: i32 productType;
      2: string productName;
      3: string unit;
      4: i32 limitedPaidBalance;
      5: i32 limitedFreeBalance;
      6: i32 unlimitedPaidBalance;
      7: i32 unlimitedFreeBalance;
      8: i64 startTime;
      9: i64 endTime;
     10: bool autopayEnabled;
}

struct PointException{
      1: i32 code;
      2: string reason;
      3: optional map<string,string> extra;
}

struct RingbackTone{
      1: string uuid;
      2: string trackId;
      3: string title;
      4: string oid;
      5: map<string,string> tids;
      6: string sid;
      7: optional string artist;
      8: optional string channelId;
}

struct ChannelSettings{
      1: bool unapprovedMessageReceivable;
}

struct GetBuddyLiveRequest{
      1: string mid;
}

struct IdentityCredentialRequest{
      1: map<string,string> metaData;
      2: i32 identityProvider;
      3: string cipherKeyId;
      4: string cipherText;
      5: IdentifierConfirmationRequest confirmationRequest;
}

struct PaidCallCurrencyExchangeRate{
      1: string currencyCode;
      2: string currencyName;
      3: string currencySign;
      4: bool preferred;
      5: string coinRate;
      6: string creditRate;
}

struct Ringtone{
      1: string title;
      2: string artist;
      3: string oid;
      4: string channelId;
}

struct TMessageReadRange{
      1: required string chatId;
      2: required map<string,list<TMessageReadRangeEntry>> ranges;
}

struct CreateChatRequest{
      1: i32 reqSeq;
      2: i32 type;
      3: optional string name;
      4: set<string> targetUserMids;
      5: optional string picturePath;
}

struct GetBuddyLiveResponse{
      1: BuddyLive info;
      2: i64 refreshedIn;
}

struct IdentityCredentialResponse{
      1: map<string,string> metaData;
      2: i32 responseType;
      3: string confirmationVerifier;
      4: i64 timeoutInSeconds;
}

struct PaidCallDialing{
      7: i32 callerIdStatus;
     10: i32 balance;
     11: string unit;
     12: i32 rate;
     13: string displayCode;
     14: string calledNumber;
     15: string calleeNationalNumber;
     16: string calleeCallingCode;
     17: string rateDivision;
     20: i32 adMaxMin;
     21: i32 adRemains;
     22: string adSessionId;
      1: i32 type;
      2: string dialedNumber;
      3: string serviceDomain;
      4: i32 productType;
      5: string productName;
      6: bool multipleProduct;
}

struct Room{
      1: string mid;
      2: i64 createdTime;
     10: list<Contact> contacts;
     31: bool notificationDisabled;
     40: list<string> memberMids;
}

struct TMessageReadRangeEntry{
      1: required i64 startMessageId;
      2: required i64 endMessageId;
      3: required i64 startTime;
      4: required i64 endTime;
}

struct BuddyChatBar{
      1: list<BuddyChatBarItem> barItems;
}

struct VerificationSessionData{
      1: string sessionId;
      2: i32 method;
      3: string callback;
      4: string normalizedPhone;
      5: string countryCode;
      6: string nationalSignificantNumber;
      7: list<i32> availableVerificationMethods;
      8: string callerIdMask;
}

struct CreateChatResponse{
      1: Chat chat;
}

struct GetBuddyStatusBarV2Request{
      1: string botMid;
      2: i64 revision;
}

struct PaidCallHistory{
     10: i64 duration;
     11: i32 terminate;
     12: i32 productType;
     13: i32 charge;
     14: string unit;
     15: string result;
      1: i64 seq;
      2: i32 type;
      3: string dialedNumber;
      4: string calledNumber;
      5: string toMid;
      6: string toName;
      7: i64 setupTime;
      8: i64 startTime;
      9: i64 endTime;
}

struct TalkException{
      1: i32 code;
      2: string reason;
      3: map<string,string> parameterMap;
}

struct BuddyChatBarItem{
      1: BuddyRichMenuChatBarItem rich;
      2: BuddyWidgetListCharBarItem widgetList;
      3: BuddyWebChatBarItem web;
}

struct WebLoginRequest{
      1: string hookedFullUrl;
      2: string sessionString;
      3: bool fromIAB;
      4: optional string sourceApplication;
}

struct ChannelToken{
      1: string token;
      2: string obsToken;
      3: i64 expiration;
      4: string refreshToken;
      5: string channelAccessToken;
}

struct GetChatsRequest{
      1: list<string> chatMids;
      2: optional bool withMembers;
      3: optional bool withInvitees;
}

struct PaidCallHistoryResult{
      1: list<PaidCallHistory> historys;
      2: bool hasNext;
}

struct SIMInfo{
      1: string phoneNumber;
      2: string countryCode;
}

struct BuddyDetail{
      1: string mid;
      2: i64 memberCount;
      3: bool onAir;
      4: bool businessAccount;
      5: bool addable;
      6: set<i32> acceptableContentTypes;
      7: bool capableMyhome;
      8: bool freePhoneCallable;
      9: string phoneNumberToDial;
     10: bool needPermissionApproval;
     11: i32 channelId;
     12: string channelProviderName;
     13: i32 iconType;
     14: i32 botType;
     15: bool showRichMenu;
     16: i64 richMenuRevision;
     17: i32 onAirLabel;
     27: i32 onAirVersion;
     18: bool useTheme;
     19: string themeId;
     20: bool useBar;
     21: i64 barRevision;
     22: bool useBackground;
     23: string backgroundId;
     24: bool statusBarEnabled;
     25: i64 statusBarRevision;
     26: string searchId;
     28: bool blockable;
}

struct WebLoginResponse{
      1: string returnUrl;
      2: optional string optionalReturnUrl;
      3: optional string redirectConfirmationPageUrl;
}

struct Chat{
      1: i32 type;
      2: string chatMid;
      3: i64 createdTime;
      4: bool notificationDisabled;
      5: optional i64 favoriteTimestamp;
      6: optional string chatName;
      7: optional string picturePath;
      8: Extra extra;
}

struct DeleteOtherFromChatRequest{
      1: i32 reqSeq;
      2: string chatMid;
      3: set<string> targetUserMids;
}

struct GetChatsResponse{
      1: list<Chat> chats;
}

struct InstantNews{
      1: i64 newsId;
      2: string newsService;
      3: i64 ttlMillis;
      4: string category;
      5: string categoryBgColor;
      6: string categoryColor;
      7: string title;
      8: string url;
      9: optional string image;
}

struct PaidCallMetadataResult{
      1: list<PaidCallCurrencyExchangeRate> currencyExchangeRates;
      2: list<string> recommendedCountryCodes;
      3: list<PaidCallAdCountry> adCountries;
      4: list<string> supportedCalledCountryCodes;
}

struct SecurityCenterResult{
      1: string uri;
      2: string token;
      3: string cookiePath;
      4: bool skip;
}

struct BuddyDetailWithPersonal{
      1: BuddyDetail buddyDetail;
      2: BuddyPersonalDetail personalDetail;
}

struct DeleteOtherFromChatResponse{
}

struct Extra{
      1: GroupExtra groupExtra;
      2: PeerExtra peerExtra;
}

struct GetCoinHistoryRequest{
      1: i32 appStoreCode;
      2: string country;
      3: string language;
      4: string searchEndDate;
      5: optional i32 offset;
      6: optional i32 limit;
}

struct InviteIntoChatRequest{
      1: i32 reqSeq;
      2: string chatMid;
      3: set<string> targetUserMids;
}

struct BuddyLive{
      1: string mid;
      2: bool onLive;
      3: string title;
      4: i64 viewerCount;
      5: string liveUrl;
}

struct ChatEffectMeta{
      1: i64 contentId;
      2: i32 category;
      3: string name;
      4: ChatEffectMetaContent defaultContent;
      5: map<i32,ChatEffectMetaContent> optionalContents;
      6: set<string> keywords;
      7: i64 beginTimeMillis;
      8: i64 endTimeMillis;
      9: i64 createdTimeMillis;
     10: i64 updatedTimeMillis;
}

struct DeleteSelfFromChatRequest{
      1: i32 reqSeq;
      2: string chatMid;
      3: optional i64 lastSeenMessageDeliveredTime;
      4: optional string lastSeenMessageId;
      5: optional i64 lastMessageDeliveredTime;
      6: optional string lastMessageId;
}

struct GetCoinHistoryResponse{
      1: list<CoinHistory> histories;
      2: Coin balance;
      3: i32 offset;
      4: bool hasNext;
}

struct InviteIntoChatResponse{
}

struct PaidCallRedeemResult{
      1: string eventName;
      2: i32 eventAmount;
}

struct Profile{
     22: string pictureStatus;
     23: string thumbnailUrl;
     24: string statusMessage;
     31: bool allowSearchByUserid;
     32: bool allowSearchByEmail;
     33: string picturePath;
     34: string musicProfile;
     35: string videoProfile;
     36: map<string,string> statusMessageContentMetadata;
     37: optional AvatarProfile avatarProfile;
      1: string mid;
      3: string userid;
     12: string regionCode;
     10: string phone;
     11: string email;
     20: string displayName;
     21: string phoneticName;
}

struct SendPostbackRequest{
      1: string messageId;
      2: string url;
      3: string chatMID;
      4: string originMID;
}

struct BuddyOnAir{
     12: i64 viewerCount;
     13: i64 targetCount;
     14: i64 livePlayTime;
     15: string screenAspectRate;
     31: i32 onAirType;
     32: BuddyOnAirUrls onAirUrls;
     33: string aspectRatioOfSource;
     41: bool useFadingOut;
     42: optional i64 fadingOutIn;
     43: optional string urlAfterFadingOut;
     44: optional string labelAfterFadingOut;
     51: bool useLowerBanner;
     52: optional string lowerBannerUrl;
     53: optional string lowerBannerLabel;
      1: string mid;
      3: i64 freshnessLifetime;
      4: string onAirId;
      5: bool onAir;
     11: string text;
}

struct DeleteSelfFromChatResponse{
}

struct FindChatByTicketRequest{
      1: string ticketId;
}

struct GetCoinProductsRequest{
      1: i32 appStoreCode;
      2: string country;
      3: string language;
      4: optional i32 pgCode;
}

struct Location{
      1: string title;
      2: string address;
      3: double latitude;
      4: double longitude;
      5: string phone;
      6: optional string categoryId;
      7: optional i32 provider;
      8: optional GeolocationAccuracy accuracy;
      9: optional double altitudeMeters;
}

struct PaidCallResponse{
      1: CallHost host;
      2: PaidCallDialing dialing;
      3: string token;
      4: list<SpotItem> spotItems;
}

struct AnalyticsInfo{
      1: double gaSamplingRate;
      2: string tmid;
}

struct CancelChatInvitationRequest{
      1: i32 reqSeq;
      2: string chatMid;
      3: set<string> targetUserMids;
}

struct ChatEffectMetaContent{
      1: string url;
      2: string checksum;
}

struct FindChatByTicketResponse{
      1: Chat chat;
}

struct GetCoinProductsResponse{
      1: list<CoinProductItem> items;
}

struct ProfileContent{
      1: string value;
      2: map<string,string> meta;
}

struct Settings{
     15: bool notificationIncomingCall;
     80: i64 agreementGdpr;
     16: string notificationSoundMessage;
     82: i64 agreementProvideLocation;
     17: string notificationSoundGroup;
     83: i64 agreementBeacon;
     18: bool notificationDisabledWithSub;
     86: i64 agreementContentsSuggest;
     19: bool notificationPayment;
     87: i64 agreementContentsSuggestDataCollection;
     68: bool notificationMention;
     90: i64 agreementOcrImageCollection;
     72: bool notificationThumbnail;
     93: bool notificationBadgeTalkOnly;
     20: bool privacySyncContacts;
     21: bool privacySearchByPhoneNumber;
     22: bool privacySearchByUserid;
     23: bool privacySearchByEmail;
     24: bool privacyAllowSecondaryDeviceLogin;
     25: bool privacyProfileImagePostToMyhome;
     63: bool privacyProfileMusicPostToMyhome;
     85: i32 privacyAllowProfileHistory;
     81: i32 privacyStatusMessageHistory;
     26: bool privacyReceiveMessagesFromNotFriend;
     27: bool privacyAgreeUseLineCoinToPaidCall;
     28: bool privacyAgreeUsePaidCall;
     29: bool privacyAllowFriendRequest;
     65: bool privacyAllowNearby;
     78: i32 privacySharePersonalInfoToFriends;
     88: i32 privacyAgeResult;
     89: bool privacyAgeResultReceived;
     91: bool privacyAllowFollow;
     92: bool privacyShowFollowList;
     30: string contactMyTicket;
     40: i32 identityProvider;
     41: string identityIdentifier;
     42: map<i32,string> snsAccounts;
     43: bool phoneRegistration;
     44: i32 emailConfirmationStatus;
     45: i32 accountMigrationPincodeType;
     46: bool enforcedInputAccountMigrationPincode;
     47: i32 securityCenterSettingsType;
     48: bool allowUnregistrationSecondaryDevice;
     50: string preferenceLocale;
     60: map<i32,string> customModes;
     61: bool e2eeEnable;
     62: bool hitokotoBackupRequested;
     66: i64 agreementNearbyTime;
     67: i64 agreementSquareTime;
     69: i64 botUseAgreementAcceptedAt;
     70: i64 agreementShakeFunction;
     71: i64 agreementMobileContactName;
     73: i64 agreementSoundToText;
     10: bool notificationEnable;
     74: string privacyPolicyVersion;
     11: i64 notificationMuteExpiration;
     75: i64 agreementAdByWebAccess;
     12: bool notificationNewMessage;
     76: i64 agreementPhoneNumberMatching;
     13: bool notificationGroupInvitation;
     77: i64 agreementCommunicationInfo;
     14: bool notificationShowMessage;
     79: i64 agreementThingsWirelessCommunication;
}

struct CancelChatInvitationResponse{
}

struct DeviceInfo{
     20: i32 applicationType;
      1: string deviceName;
      2: string systemName;
      3: string systemVersion;
      4: string model;
     10: i32 carrierCode;
     11: string carrierName;
      5: optional string webViewVersion;
}

struct FollowBuddyDetail{
      1: i32 iconType;
}

struct GetEncryptedIdentityV3Response{
      1: string wrappedNonce;
      2: string kdfParameter1;
      3: string kdfParameter2;
}

struct PaidCallUserRate{
      1: string countryCode;
      2: i32 rate;
      3: string rateDivision;
      4: string rateName;
}

struct BuddyOnAirUrls{
      1: map<string,string> hls;
      2: map<string,string> smoothStreaming;
}

struct ChatRoomAnnouncement{
      1: i64 announcementSeq;
      2: i32 type;
      3: ChatRoomAnnouncementContents contents;
      4: string creatorMid;
      5: i64 createdTime;
      6: optional i32 deletePermission;
}

struct FollowMid{
      1: string mid;
      2: string eMid;
}

struct GetFollowersRequest{
      1: FollowMid followMid;
      2: optional string cursor;
}

struct Message{
      6: i64 deliveredTime;
     10: string text;
     11: Location location;
     14: bool hasContent;
     15: i32 contentType;
     18: map<string,string> contentMetadata;
     17: string contentPreview;
     19: i8 sessionId;
     20: list<string> chunks;
     21: optional string relatedMessageId;
     22: optional i32 messageRelationType;
     23: optional i32 readCount;
     24: optional i32 relatedMessageServiceCode;
     25: optional i32 appExtensionType;
      1: string from;
      2: string to;
      3: i32 toType;
      4: string id;
      5: i64 createdTime;
}

struct ProximityMatchCandidateEntry{
      1: Contact contact;
     11: BuddyDetail buddyDetail;
}

struct ApprovedChannelInfo{
      1: ChannelInfo channelInfo;
      2: i64 approvedAt;
}

struct BuddyPersonalDetail{
      1: optional string richMenuId;
      2: optional i64 statusBarRevision;
}

struct TestCallRoute{
      1: string token;
      2: CallHost voipServer;
}

struct ChatRoomAnnouncementContentMetadata{
      1: optional string replace;
      2: optional string sticonOwnership;
}

struct E2EEGroupSharedKey{
      1: i32 keyVersion;
      2: i32 groupKeyId;
      3: string creator;
      4: i32 creatorKeyId;
      5: string receiver;
      6: i32 receiverKeyId;
      7: string encryptedSharedKey;
      8: set<i32> allowedTypes;
      9: i32 specVersion;
}

struct FollowProfile{
      1: FollowMid followMid;
      2: string displayName;
      3: string picturePath;
      4: bool following;
      5: bool allowFollow;
      6: optional FollowBuddyDetail followBuddyDetail;
}

struct GetFollowersResponse{
      1: list<FollowProfile> profiles;
      2: optional string cursor;
      3: i64 followingCount;
      4: i64 followerCount;
}

struct MessageBoxList{
      1: required list<ExtendedMessageBox> messageBoxes;
      2: required bool hasNext;
}

struct ProximityMatchCandidateResult{
      1: list<ProximityMatchCandidateEntry> users;
      2: list<ProximityMatchCandidateEntry> buddies;
     91: bool endOfResult;
}

struct ApprovedChannelInfos{
      1: list<ApprovedChannelInfo> approvedChannelInfos;
      2: i64 revision;
}

struct Ticket{
      1: string id;
     10: i64 expirationTime;
     21: i32 maxUseCount;
}

struct BuddyStatusBar{
      1: string label;
      2: i32 displayType;
      3: string title;
      4: string iconUrl;
      5: string linkUrl;
}

struct ChannelDomain{
      1: string host;
      2: bool removed;
}

struct ChatRoomAnnouncementContents{
      1: i32 displayFields;
      2: string text;
      3: optional string link;
      4: optional string thumbnail;
      5: optional ChatRoomAnnouncementContentMetadata contentMetadata;
}

struct CoinUseReservation{
      1: string channelId;
      2: string shopOrderId;
      3: i32 appStoreCode;
      4: list<CoinUseReservationItem> items;
      5: string country;
}

struct E2EEKey{
      1: i32 version;
      2: i32 keyId;
      4: string publicKey;
      5: string privateKey;
      6: i64 createdTime;
}

struct FollowRequest{
      1: FollowMid followMid;
}

struct GetFollowingsRequest{
      1: FollowMid followMid;
      2: optional string cursor;
}

struct MessageBoxListRequest{
      1: optional string minChatId;
      2: optional string maxChatId;
      3: bool activeOnly;
      4: i32 messageBoxCountLimit;
      5: bool withUnreadCount;
      6: i32 lastMessagesPerMessageBoxCount;
      7: optional bool unreadOnly;
}

struct AuthKeyExchangeRequest{
      1: i32 authKeyVersion;
      2: string publicKey;
      3: string nonce;
}

struct BuddyRichMenuChatBarItem{
      1: string label;
      2: string body;
      3: bool selected;
}

struct UnfollowRequest{
      1: FollowMid followMid;
}

struct ChannelDomains{
      1: list<ChannelDomain> channelDomains;
      2: i64 revision;
}

struct CoinUseReservationItem{
      1: string itemId;
      2: string itemName;
      3: i32 amount;
}

struct E2EEKeyChain{
      1: list<E2EEKey> keychain;
}

struct GetFollowingsResponse{
      1: list<FollowProfile> profiles;
      2: optional string cursor;
      3: i64 followingCount;
      4: i64 followerCount;
}

struct MessageBoxV2MessageId{
      1: i64 deliveredTime;
      2: i64 messageId;
}

struct PaymentReservationResult{
      1: string orderId;
      2: string confirmUrl;
      3: map<string,string> extras;
}

struct PushRecvReport{
      1: string pushTrackingId;
      2: i64 recvTimestamp;
      3: i32 battery;
      4: i32 batteryMode;
      5: i32 clientNetworkType;
      6: string carrierCode;
      7: optional i64 displayTimestamp;
}

service h0_a_e_a_b{
    void acceptProximityMatches(
        2 : string sessionId,
        3 : set<string> ids
    )throws(1: TalkException e);

    void updateNotificationToken(
        3 : i32 type,
        2 : string token
    )throws(1: TalkException e);

    Settings getSettings(
        1 : i32 syncReason
    )throws(1: TalkException e);

    Ringtone getRingtone(
    )throws(1: TalkException e);

    IdentityCredentialResponse setPassword(
        2 : string authSessionId,
        3 : IdentityCredentialRequest request
    )throws(1: TalkException e);

    RejectChatInvitationResponse rejectChatInvitation(
        1 : RejectChatInvitationRequest request
    )throws(1: TalkException e);

    VerificationSessionData startUpdateVerification(
        2 : string region,
        3 : i32 carrier,
        4 : string phone,
        5 : string udidHash,
        6 : DeviceInfo deviceInfo,
        7 : string networkCode,
        8 : string locale,
        9 : SIMInfo simInfo
    )throws(1: TalkException e);

    void disableNearby(
    )throws(1: TalkException e);

    list<Message> getPreviousMessagesV2WithRequest(
        2 : GetPreviousMessagesV2Request request,
        3 : i32 syncReason
    )throws(1: TalkException e);

    E2EEGroupSharedKey getE2EEGroupSharedKey(
        2 : i32 keyVersion,
        3 : string chatMid,
        4 : i32 groupKeyId
    )throws(1: TalkException e);

    string registerDeviceWithIdentityCredential(
        2 : string sessionId,
        5 : i32 provider,
        3 : string identifier,
        4 : string verifier,
        6 : string migrationPincodeSessionId
    )throws(1: TalkException e);

    TestCallRoute acquireTestCallRoute(
    )throws(1: TalkException e);

    Group getGroupthrows(1: TalkException e);

    PaidCallResponse lookupPaidCall(
        2 : string dialedNumber,
        3 : string language,
        4 : string referer
    )throws(1: TalkException e);

    ExtendedProfile getExtendedProfile(
        1 : i32 syncReason
    )throws(1: TalkException e);

    list<string> getRecommendationIds(
        1 : i32 syncReason
    )throws(1: TalkException e);

    void notifyUpdated(
        2 : i64 lastRev,
        3 : DeviceInfo deviceInfo,
        4 : string udidHash,
        5 : string oldUdidHash
    )throws(1: TalkException e);

    void requestResendMessage(
        1 : i32 reqSeq,
        2 : string senderMid,
        3 : string messageId
    )throws(1: TalkException e);

    BuddyStatusBar getBuddyStatusBarV2(
        1 : GetBuddyStatusBarV2Request request
    )throws(1: TalkException e);

    ChannelInfo getChannelInfo(
        2 : string channelId,
        3 : string locale
    )throws(1: ChannelException e);

    list<string> getGroupIdsJoinedthrows(1: TalkException e);

    void inviteIntoGroupthrows(1: TalkException e);

    E2EENegotiationResult negotiateE2EEPublicKey(
        2 : string mid
    )throws(1: TalkException e);

    string unregisterUserAndDevice(
    )throws(1: TalkException e);

    BuddyChatBar getBuddyChatBarV2(
        1 : GetBuddyChatBarRequest request
    )throws(1: TalkException e);

    GroupCallRoute acquireGroupCallRoute(
        2 : string chatMid,
        3 : i32 mediaType,
        4 : bool isInitialHost,
        5 : list<string> capabilities
    )throws(1: TalkException e);

    Group getGroupWithoutMembersthrows(1: TalkException e);

    bool wakeUpLongPolling(
        2 : i64 clientRevision
    )throws(1: TalkException e);

    list<ChatEffectMeta> getChatEffectMetaList(
        1 : set<i32> categories
    )throws(1: TalkException e);

    void respondResendMessage(
        1 : i32 reqSeq,
        2 : string receiverMid,
        3 : string originalMessageId,
        4 : Message resendMessage,
        5 : i32 errorCode
    )throws(1: TalkException e);

    void reportSpammerthrows(1: TalkException e);

    PaidCallResponse acquirePaidCallRoute(
        2 : i32 paidCallType,
        3 : string dialedNumber,
        4 : string language,
        5 : string networkCode,
        6 : bool disableCallerId,
        7 : string referer,
        8 : string adSessionId
    )throws(1: TalkException e);

    set updateSettingsAttributes2(
        1 : i32 reqSeq,
        4 : set attributesToUpdate,
        3 : Settings settings
    )throws(1: TalkException e);

    void kickoutFromGroupthrows(1: TalkException e);

    void leaveGroupthrows(1: TalkException e);

    string removeSnsIdthrows(1: TalkException e);

    AuthLoginResponse setClovaCredential(
        2 : string authSessionId,
        3 : AuthLoginRequest request
    )throws(1: TalkException e);

    RSAKey getRSAKeyInfo(
        2 : i32 provider
    )throws(1: TalkException e);

    ProximityMatchCandidateResult getProximityMatchCandidateList(
        2 : string sessionId
    )throws(1: TalkException e);

    PendingAgreementsResponse getPendingAgreements(
    )throws(1: TalkException e);

    FriendRequestsInfo getRecentFriendRequests(
        1 : i32 syncReason
    )throws(1: TalkException e);

    list<InstantNews> getInstantNews(
        1 : string region,
        2 : Location location
    )throws(1: TalkException e);

    ChannelToken approveChannelAndIssueChannelToken(
        1 : string channelId
    )throws(1: ChannelException e);

    list<NearbyEntry> updateAndGetNearby(
        2 : double latitude,
        3 : double longitude,
        4 : GeolocationAccuracy accuracy,
        5 : ClientNetworkStatus networkStatus,
        6 : double altitudeMeters,
        7 : double velocityMetersPerSecond,
        8 : double bearingDegrees
    )throws(1: TalkException e);

    list<TMessageReadRange> getMessageReadRange(
        2 : required list<string> chatIds,
        3 : i32 syncReason
    )throws(1: TalkException e);

    GetAllChatMidsResponse getAllChatMids(
        1 : GetAllChatMidsRequest request,
        2 : i32 syncReason
    )throws(1: TalkException e);

    PaidCallRedeemResult redeemPaidCallVoucher(
        2 : string serial,
        3 : string language
    )throws(1: TalkException e);

    void respondE2EELoginRequest(
        1 : string verifier,
        2 : E2EEPublicKey publicKey,
        3 : string encryptedKeyChain,
        4 : string hashKeyChain,
        5 : i32 errorCode
    )throws(1: TalkException e);

    list<Contact> getPromotedBuddyContacts(
        2 : string language,
        3 : string country
    )throws(1: TalkException e);

    Contact findAndAddContactByMetaTag(
        1 : i32 reqSeq,
        2 : string searchId,
        3 : string reference
    )throws(1: TalkException e);

    AnalyticsInfo getAnalyticsInfo(
    )throws(1: TalkException e);

    DeleteSelfFromChatResponse deleteSelfFromChat(
        1 : DeleteSelfFromChatRequest request
    )throws(1: TalkException e);

    SnsProfile getSnsMyProfile(
        2 : i32 snsIdType,
        3 : string snsAccessToken
    )throws(1: TalkException e);

    void reportProfile(
        2 : i64 syncOpRevision,
        3 : Profile profile
    )throws(1: TalkException e);

    PaidCallMetadataResult getPaidCallMetadata(
        2 : string language
    )throws(1: TalkException e);

    map<string,E2EEPublicKey> getLastE2EEPublicKeys(
        2 : string chatMid
    )throws(1: TalkException e);

    string verifyQrcodeWithE2EE(
        2 : string verifier,
        3 : string pinCode,
        4 : i32 errorCode,
        5 : E2EEPublicKey publicKey,
        6 : string encryptedKeyChain,
        7 : string hashKeyChain
    )throws(1: TalkException e);

    PaidCallDialing markPaidCallAd(
        2 : string dialedNumber,
        3 : string language,
        4 : bool disableCallerId
    )throws(1: TalkException e);

    list<FriendRequest> getFriendRequests(
        1 : i32 direction,
        2 : i64 lastSeenSeqId
    )throws(1: TalkException e);

    Room createRoomV2(
        1 : i32 reqSeq,
        2 : list<string> contactIds
    )throws(1: TalkException e);

    Settings getSettingsAttributes2(
        2 : set attributesToRetrieve
    )throws(1: TalkException e);

    void noop(
    )throws(1: TalkException e);

    RingbackTone getRingbackTone(
    )throws(1: TalkException e);

    IdentityCredentialResponse removeIdentifier(
        2 : string authSessionId,
        3 : IdentityCredentialRequest request
    )throws(1: TalkException e);

    PhoneVerificationResult verifyPhoneNumber(
        2 : string sessionId,
        3 : string pinCode,
        4 : string udidHash,
        5 : string migrationPincodeSessionId,
        6 : string oldUdidHash
    )throws(1: TalkException e);

    void requestCleanupUserProvidedData(
        1 : set<i32> dataTypes
    )throws(1: TalkException e);

    list<string> getGroupIdsInvitedthrows(1: TalkException e);

    IdentityCredentialResponse updateIdentifier(
        2 : string authSessionId,
        3 : IdentityCredentialRequest request
    )throws(1: TalkException e);

    RSAKey getAuthRSAKey(
        2 : string authSessionId,
        3 : i32 identityProvider
    )throws(1: TalkException e);

    void acceptGroupInvitationthrows(1: TalkException e);

    void resendPinCode(
        2 : string sessionId
    )throws(1: TalkException e);

    string openAuthSession(
        2 : AuthSessionRequest request
    )throws(1: TalkException e);

    EmailConfirmationSession requestEmailConfirmationthrows(1: TalkException e);

    list<PaidCallBalance> getPaidCallBalanceList(
        2 : string language
    )throws(1: TalkException e);

    void tryFriendRequest(
        1 : string midOrEMid,
        2 : i32 method,
        3 : string friendRequestParams
    )throws(1: TalkException e);

    void updateGroupthrows(1: TalkException e);

    list<ChannelNotificationSetting> getChannelNotificationSettings(
        1 : string locale
    )throws(1: ChannelException e);

    Settings getSettingsAttributes(
        2 : i32 attrBitset
    )throws(1: TalkException e);

    string acquireEncryptedAccessToken(
        2 : i32 featureType
    )throws(1: TalkException e);

    list<string> getBlockedRecommendationIds(
        1 : i32 syncReason
    )throws(1: TalkException e);

    void reportLocation(
        1 : Geolocation location,
        2 : i32 trigger,
        3 : ClientNetworkStatus networkStatus,
        4 : i64 measuredAt,
        5 : string trackingData
    )throws(1: TalkException e);

    void sendChatRemoved(
        1 : i32 seq,
        2 : string chatMid,
        3 : string lastMessageId,
        4 : i8 sessionId
    )throws(1: TalkException e);

    list<string> getUpdatedChannelIds(
        1 : list<ChannelIdWithLastUpdated> channelIds
    )throws(1: ChannelException e);

    SecurityCenterResult issueTokenForAccountMigration(
        2 : string migrationSessionId
    )throws(1: TalkException e);

    UserAuthStatus verifyIdentityCredentialWithResult(
        2 : IdentityCredential identityCredential,
        3 : string migrationPincodeSessionId
    )throws(1: TalkException e);

    list<Room> getRoomsV2(
        2 : list<string> roomIds
    )throws(1: TalkException e);

    void updateProfileAttributethrows(1: TalkException e);

    void removeChatRoomAnnouncement(
        1 : i32 reqSeq,
        2 : string chatRoomMid,
        3 : i64 announcementSeq
    )throws(1: TalkException e);

    i64 getLastOpRevision(
    )throws(1: TalkException e);

    FindChatByTicketResponse findChatByTicket(
        1 : FindChatByTicketRequest request
    )throws(1: TalkException e);

    BuddyDetailWithPersonal getBuddyDetailWithPersonal(
        1 : string buddyMid,
        2 : set attributeSet
    )throws(1: TalkException e);

    map<string,list<ChatRoomAnnouncement>> getChatRoomAnnouncementsBulk(
        2 : list<string> chatRoomMids,
        3 : i32 syncReason
    )throws(1: TalkException e);

    CoinHistoryResult getCallCreditPurchaseHistory(
        2 : CoinHistoryCondition request
    )throws(1: TalkException e);

    RequestTokenResponse issueRequestTokenWithAuthScheme(
        1 : string channelId,
        2 : string otpId,
        3 : list<string> authScheme,
        4 : string returnUrl
    )throws(1: ChannelException e);

    list<string> getBlockedContactIds(
        1 : i32 syncReason
    )throws(1: TalkException e);

    GetEncryptedIdentityV3Response getEncryptedIdentityV3(
    )throws(1: TalkException e);

    GetFollowingsResponse getFollowings(
        2 : GetFollowingsRequest getFollowingsRequest
    )throws(1: TalkException e);

    void inviteFriendsBySms(
        2 : list<string> phoneNumberList
    )throws(1: TalkException e);

    InviteIntoChatResponse inviteIntoChat(
        1 : InviteIntoChatRequest request
    )throws(1: TalkException e);

    void rejectGroupInvitationthrows(1: TalkException e);

    void finishUpdateVerification(
        2 : string sessionId
    )throws(1: TalkException e);

    bool registerUserid(
        1 : i32 reqSeq,
        2 : string searchId
    )throws(1: TalkException e);

    string registerWithSnsIdAndIdentityCredential(
        2 : i32 snsIdType,
        3 : string snsAccessToken,
        4 : IdentityCredential identityCredential,
        5 : string region,
        6 : string udidHash,
        7 : DeviceInfo deviceInfo,
        8 : string migrationPincodeSessionId
    )throws(1: TalkException e);

    void unfollow(
        2 : UnfollowRequest unfollowRequest
    )throws(1: TalkException e);

    ChannelToken issueChannelToken(
        1 : string channelId
    )throws(1: ChannelException e);

    AgeCheckRequestResult retrieveRequestToken(
        2 : i32 carrier
    )throws(1: TalkException e);

    void reportDeviceState(
        2 : map<i32,bool> booleanState,
        3 : map<i32,string> stringState
    )throws(1: TalkException e);

    GetFollowersResponse getFollowers(
        2 : GetFollowersRequest getFollowersRequest
    )throws(1: TalkException e);

    void unsendMessage(
        1 : i32 seq,
        2 : string messageId
    )throws(1: TalkException e);

    VerificationSessionData changeVerificationMethod(
        2 : string sessionId,
        3 : i32 method
    )throws(1: TalkException e);

    Room createRoomthrows(1: TalkException e);

    PaidCallAdResult getPaidCallAdStatus(
    )throws(1: TalkException e);

    void requestAccountPasswordReset(
        4 : i32 provider,
        2 : string identifier,
        5 : string locale
    )throws(1: TalkException e);

    void updateAccountMigrationPincode(
        2 : string accountMigrationPincode
    )throws(1: TalkException e);

    string reserveCoinUse(
        2 : CoinUseReservation request,
        3 : string locale
    )throws(1: ChannelException e);

    void notifyInstalled(
        2 : string udidHash,
        3 : string applicationTypeWithExtensions
    )throws(1: TalkException e);

    RegisterWithPhoneNumberResult registerWithPhoneNumber(
        2 : string sessionId,
        3 : string migrationPincodeSessionId
    )throws(1: TalkException e);

    void removeFollower(
        2 : RemoveFollowerRequest removeFollowerRequest
    )throws(1: TalkException e);

    WebLoginResponse getWebLoginDisallowedUrl(
        2 : WebLoginRequest webLoginRequest
    )throws(1: ChannelException e);

    E2EEGroupSharedKey registerE2EEGroupKey(
        2 : i32 keyVersion,
        3 : string chatMid,
        4 : list<string> members,
        5 : list<i32> keyIds,
        6 : list<string> encryptedSharedKeys
    )throws(1: TalkException e);

    void respondE2EEKeyExchange(
        1 : i32 reqSeq,
        2 : string encryptedKeyChain,
        3 : string hashKeyChain
    )throws(1: TalkException e);

    void unblockRecommendation(
        1 : i32 reqSeq,
        2 : string id
    )throws(1: TalkException e);

    map<string,i64> getNewlyReleasedBuddyIds(
        3 : string country
    )throws(1: TalkException e);

    DeleteOtherFromChatResponse deleteOtherFromChat(
        1 : DeleteOtherFromChatRequest request
    )throws(1: TalkException e);

    Contact getContact(
        2 : string id
    )throws(1: TalkException e);

    void inviteIntoGroupCall(
        2 : string chatMid,
        3 : list<string> memberMids,
        4 : i32 mediaType
    )throws(1: TalkException e);

    AuthKeyExchangeResponse exchangeKey(
        2 : string authSessionId,
        3 : AuthKeyExchangeRequest request
    )throws(1: TalkException e);

    void cancelGroupInvitationthrows(1: TalkException e);

    void updateSettingsAttribute(
        1 : i32 reqSeq,
        2 : i32 attr,
        3 : string value
    )throws(1: TalkException e);

    Configurations getConfigurations(
        2 : i64 revision,
        3 : string regionOfUsim,
        4 : string regionOfTelephone,
        5 : string regionOfLocale,
        6 : string carrier,
        7 : i32 syncReason
    )throws(1: TalkException e);

    IdentityCredentialResponse updatePassword(
        2 : string authSessionId,
        3 : IdentityCredentialRequest request
    )throws(1: TalkException e);

    void reportPushRecvReports(
        1 : i32 reqSeq,
        2 : list<PushRecvReport> pushRecvReports
    )throws(1: TalkException e);

    Group createGroupthrows(1: TalkException e);

    GetChatsResponse getChats(
        1 : GetChatsRequest request
    )throws(1: TalkException e);

    CreateChatResponse createChat(
        1 : CreateChatRequest request
    )throws(1: TalkException e);

    Ticket generateUserTicket(
        3 : i64 expirationTime,
        4 : i32 maxUseCount
    )throws(1: TalkException e);

    void leaveRoom(
        1 : i32 reqSeq,
        2 : string roomId
    )throws(1: TalkException e);

    list<string> getAllContactIds(
        1 : i32 syncReason
    )throws(1: TalkException e);

    GetBalanceResponse getBalance(
        1 : GetBalanceRequest request
    )throws(1: PointException e);

    MessageBoxList getMessageBoxes(
        2 : MessageBoxListRequest messageBoxListRequest,
        3 : i32 syncReason
    )throws(1: TalkException e);

    void inviteIntoRoom(
        1 : i32 reqSeq,
        2 : string roomId,
        3 : list<string> contactIds
    )throws(1: TalkException e);

    ContactRegistration getContactRegistration(
        1 : string id,
        2 : i32 type
    )throws(1: TalkException e);

    void blockContact(
        1 : i32 reqSeq,
        2 : string id
    )throws(1: TalkException e);

    ReissueChatTicketResponse reissueChatTicket(
        1 : ReissueChatTicketRequest request
    )throws(1: TalkException e);

    BuddyDetail getBuddyDetail(
        4 : string buddyMid
    )throws(1: TalkException e);

    IdentityCredentialResponse setIdentifierAndPassword(
        2 : string authSessionId,
        3 : IdentityCredentialRequest request
    )throws(1: TalkException e);

    map<string,ContactRegistration> syncContacts(
        1 : i32 reqSeq,
        2 : list<ContactModification> localContacts
    )throws(1: TalkException e);

    list<BuddySearchResult> findBuddyContactsByQuery(
        2 : string language,
        3 : string country,
        4 : string query,
        5 : i32 fromIndex,
        6 : i32 count,
        7 : i32 requestSource
    )throws(1: TalkException e);

    void updateExtendedProfileAttribute(
        1 : i32 reqSeq,
        2 : i32 attr,
        3 : ExtendedProfile extendedProfile
    )throws(1: TalkException e);

    void removeFriendRequest(
        1 : i32 direction,
        2 : string midOrEMid
    )throws(1: TalkException e);

    void blockRecommendation(
        1 : i32 reqSeq,
        2 : string id
    )throws(1: TalkException e);

    void updateProfileAttributes(
        1 : i32 reqSeq,
        2 : UpdateProfileAttributesRequest request
    )throws(1: TalkException e);

    EmailConfirmationSession resendEmailConfirmationthrows(1: TalkException e);

    void clearRingtone(
        1 : string oid
    )throws(1: TalkException e);

    string createAccountMigrationPincodeSession(
    )throws(1: TalkException e);

    string addSnsIdthrows(1: TalkException e);

    void sendPostback(
        2 : SendPostbackRequest request
    )throws(1: TalkException e);

    string verifyQrcode(
        2 : string verifier,
        3 : string pinCode
    )throws(1: TalkException e);

    Contact findContactByUserid(
        2 : string searchId
    )throws(1: TalkException e);

    list<CoinProductItem> getCallCreditProducts(
        2 : i32 appStoreCode,
        3 : i32 pgCode,
        4 : string country,
        5 : string language
    )throws(1: TalkException e);

    E2EEGroupSharedKey getLastE2EEGroupSharedKey(
        2 : i32 keyVersion,
        3 : string chatMid
    )throws(1: TalkException e);

    CancelChatInvitationResponse cancelChatInvitation(
        1 : CancelChatInvitationRequest request
    )throws(1: TalkException e);

    GetBuddyLiveResponse getBuddyLive(
        1 : GetBuddyLiveRequest request
    )throws(1: TalkException e);

    void verifyAccountMigration(
        2 : string migrationSessionId
    )throws(1: TalkException e);

    set<string> getAcceptedProximityMatches(
        2 : string sessionId
    )throws(1: TalkException e);

    i32 checkUserAge(
        2 : i32 carrier,
        3 : string sessionId,
        4 : string verifier,
        5 : i32 standardAge
    )throws(1: TalkException e);

    map<string,ChatRoomBGM> getChatRoomBGMs(
        2 : set<string> chatRoomMids,
        3 : i32 syncReason
    )throws(1: TalkException e);

    Message sendMessage(
        1 : i32 seq,
        2 : Message message
    )throws(1: TalkException e);

    void closeProximityMatch(
        2 : string sessionId
    )throws(1: TalkException e);

    UpdateChatResponse updateChat(
        1 : UpdateChatRequest request
    )throws(1: TalkException e);

    void removeAllMessages(
        1 : i32 seq,
        2 : string lastMessageId
    )throws(1: TalkException e);

    list<PlaceSearchInfo> getPlaceSearchInfo(
        2 : i32 provider,
        3 : string keyword,
        4 : string clientLocale,
        5 : double latitude,
        6 : double longitude,
        7 : i32 radius
    )throws(1: TalkException e);

    string decryptFollowEMid(
        2 : string eMid
    )throws(1: TalkException e);

    GroupCall getGroupCall(
        2 : string chatMid
    )throws(1: TalkException e);

    string getShakeEventV1(
        1 : Geolocation location
    )throws(1: TalkException e);

    bool updateChannelSettings(
        1 : ChannelSettings channelSettings
    )throws(1: ChannelException e);

    void sendEchoPush(
        2 : string text
    )throws(1: TalkException e);

    AgeCheckDocomoResult checkUserAgeWithDocomo(
        2 : string openIdRedirectUrl,
        3 : i32 standardAge,
        4 : string verifier
    )throws(1: TalkException e);

    GetCoinHistoryResponse getCoinPurchaseHistory(
        1 : GetCoinHistoryRequest request
    )throws(1: TalkException e);

    ChannelSettings getChannelSettings(
    )throws(1: ChannelException e);

    list<Cif> fetchOps(
        2 : i64 localRev,
        3 : i32 count,
        4 : i64 globalRev,
        5 : i64 individualRev
    )throws(1: TalkException e);

    IdentityCredentialResponse resendIdentifierConfirmation(
        2 : string authSessionId,
        3 : IdentityCredentialRequest request
    )throws(1: TalkException e);

    IdentityCredentialResponse setIdentifier(
        2 : string authSessionId,
        3 : IdentityCredentialRequest request
    )throws(1: TalkException e);

    void updateContactSetting(
        1 : i32 reqSeq,
        2 : string mid,
        3 : i32 flag,
        4 : string value
    )throws(1: TalkException e);

    PaidCallHistoryResult getPaidCallHistory(
        2 : i64 start,
        3 : i32 size,
        4 : string language
    )throws(1: TalkException e);

    map<string,Contact> findAndAddContactsByMid(
        1 : i32 reqSeq,
        2 : string mid,
        3 : i32 type,
        4 : string reference
    )throws(1: TalkException e);

    map<string,Contact> findAndAddContactsByUserid(
        1 : i32 reqSeq,
        2 : string searchId,
        3 : string reference
    )throws(1: TalkException e);

    RegisterWithSnsIdResult registerWithSnsId(
        2 : i32 snsIdType,
        3 : string snsAccessToken,
        4 : string region,
        5 : string udidHash,
        6 : DeviceInfo deviceInfo,
        7 : string mid,
        8 : string migrationPincodeSessionId
    )throws(1: TalkException e);

    GetCoinProductsResponse getCoinProducts(
        1 : GetCoinProductsRequest request
    )throws(1: TalkException e);

    list<PaidCallUserRate> searchPaidCallUserRate(
        2 : string countryCode,
        3 : string language
    )throws(1: TalkException e);

    void reportSettings(
        2 : i64 syncOpRevision,
        3 : Settings settings
    )throws(1: TalkException e);

    ApprovedChannelInfos getApprovedChannels(
        2 : i64 lastSynced,
        3 : string locale
    )throws(1: ChannelException e);

    SnsIdUserStatus findSnsIdUserStatus(
        2 : i32 snsIdType,
        3 : string snsAccessToken,
        4 : string udidHash,
        5 : string migrationPincodeSessionId,
        6 : string oldUdidHash
    )throws(1: TalkException e);

    bool isUseridAvailable(
        2 : string searchId
    )throws(1: TalkException e);

    IdentityCredentialResponse confirmIdentifier(
        2 : string authSessionId,
        3 : IdentityCredentialRequest request
    )throws(1: TalkException e);

    list<Contact> getContacts(
        2 : list<string> ids
    )throws(1: TalkException e);

    list<ChatRoomAnnouncement> getChatRoomAnnouncements(
        2 : string chatRoomMid
    )throws(1: TalkException e);

    void notifySleep(
        2 : i64 lastRev,
        3 : i32 badge
    )throws(1: TalkException e);

    PaymentReservationResult reserveCallCreditPurchase(
        2 : CoinPurchaseReservation request
    )throws(1: TalkException e);

    AcceptChatInvitationResponse acceptChatInvitation(
        1 : AcceptChatInvitationRequest request
    )throws(1: TalkException e);

    ChannelDomains getCommonDomains(
        1 : i64 lastSynced
    )throws(1: ChannelException e);

    void verifyAccountMigrationPincode(
        2 : string migrationPincodeSessionId,
        3 : string accountMigrationPincode
    )throws(1: TalkException e);

    void updateChannelNotificationSetting(
        1 : list<ChannelNotificationSetting> setting
    )throws(1: ChannelException e);

    SecurityCenterResult issueTokenForAccountMigrationSettings(
        2 : bool enforce
    )throws(1: TalkException e);

    E2EEPublicKey getE2EEPublicKey(
        2 : string mid,
        3 : i32 keyVersion,
        4 : i32 keyId
    )throws(1: TalkException e);

    AcceptChatInvitationByTicketResponse acceptChatInvitationByTicket(
        1 : AcceptChatInvitationByTicketRequest request
    )throws(1: TalkException e);

    i64 getServerTime(
    )throws(1: TalkException e);

    list<E2EEPublicKey> getE2EEPublicKeysthrows(1: TalkException e);

    void follow(
        2 : FollowRequest followRequest
    )throws(1: TalkException e);

    GetCoinHistoryResponse getCoinUseAndRefundHistory(
        1 : GetCoinHistoryRequest request
    )throws(1: TalkException e);

    E2EEPublicKey registerE2EEPublicKey(
        1 : i32 reqSeq,
        2 : E2EEPublicKey publicKey
    )throws(1: TalkException e);

    CallRoute acquireCallRoute(
        2 : string to,
        3 : i32 callType,
        4 : map<string,string> fromEnvInfo
    )throws(1: TalkException e);

    map<string,Contact> findAndAddContactsByPhone(
        1 : i32 reqSeq,
        2 : set<string> phones,
        3 : string reference
    )throws(1: TalkException e);

    Contact findContactByUserTicket(
        2 : string ticketIdWithTag
    )throws(1: TalkException e);

    GetTotalCoinBalanceResponse getTotalCoinBalance(
        1 : GetTotalCoinBalanceRequest request
    )throws(1: TalkException e);

    void setNotificationsEnabled(
        1 : i32 reqSeq,
        2 : i32 type,
        3 : string target,
        4 : bool enablement
    )throws(1: TalkException e);

    Contact findContactByMetaTag(
        2 : string searchId,
        3 : string reference
    )throws(1: TalkException e);

    ChatRoomBGM updateChatRoomBGM(
        1 : i32 reqSeq,
        2 : string chatRoomMid,
        3 : string chatRoomBGMInfo
    )throws(1: TalkException e);

    VerificationSessionData startVerification(
        2 : string region,
        3 : i32 carrier,
        4 : string phone,
        5 : string udidHash,
        6 : DeviceInfo deviceInfo,
        7 : string networkCode,
        8 : string mid,
        9 : string locale,
        10: SIMInfo simInfo,
        11: string oldUdidHash
    )throws(1: TalkException e);

    ChatRoomAnnouncement createChatRoomAnnouncement(
        1 : i32 reqSeq,
        2 : string chatRoomMid,
        3 : i32 type,
        4 : ChatRoomAnnouncementContents contents
    )throws(1: TalkException e);

    void sendChatChecked(
        1 : i32 seq,
        2 : string chatMid,
        3 : string lastMessageId,
        4 : i8 sessionId
    )throws(1: TalkException e);

    void unblockContact(
        1 : i32 reqSeq,
        2 : string id,
        3 : string reference
    )throws(1: TalkException e);

    WebLoginResponse getReturnUrlWithRequestTokenForAutoLogin(
        2 : WebLoginRequest webLoginRequest
    )throws(1: ChannelException e);

    Profile getProfile(
        1 : i32 syncReason
    )throws(1: TalkException e);

    list<i32> getPlaceSearchProviderList(
        1 : string region
    )throws(1: TalkException e);

    void clearRingbackTone(
    )throws(1: TalkException e);

    map<string,Contact> findContactsByPhone(
        2 : set<string> phones
    )throws(1: TalkException e);

    EmailConfirmationResult confirmEmailthrows(1: TalkException e);

    MoretabRecommend getMoretabRecommend(
    )throws(1: TalkException e);

    void notifyRegistrationComplete(
        2 : string udidHash,
        3 : string applicationTypeWithExtensions
    )throws(1: TalkException e);

    string getCountryWithRequestIp(
    )throws(1: TalkException e);

    string openProximityMatch(
        2 : Location location,
        3 : ClientNetworkStatus networkStatus
    )throws(1: TalkException e);

    string retrieveOpenIdAuthUrlWithDocomo(
    )throws(1: TalkException e);

    void reportAbuse(
        2 : AbuseReport abuseReport
    )throws(1: TalkException e);

    PaymentReservationResult reserveCoinPurchase(
        1 : CoinPurchaseReservation request
    )throws(1: TalkException e);

    BuddyOnAir getBuddyOnAir(
        4 : string buddyMid
    )throws(1: TalkException e);

    void report(
        2 : i64 syncOpRevision,
        3 : i32 category,
        4 : string report
    )throws(1: TalkException e);

    void updateGroupPreferenceAttributethrows(1: TalkException e);

    set<string> getCountries(
        2 : i32 countryGroup
    )throws(1: TalkException e);

}

