include "g_a_b_e0_a_d.thrift"


struct PaymentTransactionHistoryInfo{
      1: string message;
/*
enum g.a.b.e0.a.d.bd.class {
}
*/
      2: i32 type;
      3: i64 createdDate;
/*
enum g.a.b.e0.a.d.g1.class {
}
*/
      4: i32 destination;
}

struct BalanceInfo{
     25: string responseToken;
      3: string balanceLimit;
     12: string rechargeableAmount;
     13: DisplayMoney balanceAmount;
     16: MoneyRange bankChargeRange;
     17: MoneyRange atmChargeRange;
     18: MoneyRange convenienceStoreChargeRange;
     19: MoneyRange eachPayRange;
     20: MoneyRange eachTransferRange;
     21: MoneyRange eachWithdrawRange;
     22: MoneyRange balanceNotifySetupRange;
     23: MoneyRange eachTransferRequestRange;
     24: MoneyRange debitCardChargeRange;
}

struct PayWithdrawStaticMenu{
      1: string title;
      2: string urlKey;
      3: string imageUrl;
}

struct PaymentAddressSearchResult{
      1: string state;
      2: string address1;
}

struct PaymentFlowTypeCustom{
      1: string view;
      2: list<PaymentFlowTypeCustomElement> elements;
}

struct PaymentTransferRequest{
      1: string amount;
      2: string receivedLineMemberId;
}

struct PaymentFlowTypeCustomElement{
      1: string id;
      2: string value;
      3: string style;
      4: string regularExpression;
      5: bool visible;
      6: string uri;
}

struct BankBranchInfo{
      1: string branchId;
      2: string branchCode;
      3: string name;
      4: string name2;
}

struct PaymentFlowTypeInfo{
/*
enum g.a.b.e0.a.d.b1.class {
}
*/
      1: i32 flowType;
/*
enum g.a.b.e0.a.d.f0.class {
}
*/
      2: i32 authType;
/*
enum g.a.b.e0.a.d.r1.class {
}
*/
      3: map<i32,list<string>> handleableOps;
      4: list<PaymentFlowTypeCustom> customs;
}

struct BankInfo{
      1: i64 bankId;
      2: string financialCorpId;
      3: string financialCorpCode;
/*
enum g.a.b.e0.a.d.d.class {
}
*/
      4: i32 type;
      5: string name;
      6: string imageUrl;
      7: string name2;
      8: string preCreationText;
}

struct PaymentTransferTargetInfo{
      1: string name;
      2: string accountNo;
      3: string referenceNo;
      4: string lineMemberId;
}

struct PaymentAuthenticationInfo{
      1: string authToken;
      2: string confirmMessage;
}

struct CheckOperationResult{
      1: bool tradable;
      2: string reason;
      3: string detailMessage;
}

struct PaymentAvailableAuth{
/*
enum g.a.b.e0.a.d.e0.class {
}
*/
      1: list<i32> methods;
      2: string authToken;
}

struct PaymentUrlInfo{
      1: string url;
      2: bool mustScroll;
      3: string pageTitle;
      4: string label;
      5: string labelJoin;
      6: bool acceptanceRequired;
      7: string labelDesc;
}

struct PaymentCacheableSettings{
/*
enum g.a.b.e0.a.d.rc.class {
}
*/
      1: map<i32,i64> timestamps;
/*
enum g.a.b.e0.a.d.o1.class {
}
*/
      2: map<i32,list<PaymentCountrySettingMenu>> menus;
      3: map<string,PaymentUrlInfo> urls;
/*
enum g.a.b.e0.a.d.gd.class {
}
*/
      4: map<i32,list<string>> urlGroups;
/*
enum g.a.b.e0.a.d.wc.class {
}
*/
      5: map<i32,list<PaymentTosUrlBundle>> tosUrlBundles;
      6: list<PaymentCardValidationRule> cardValidationRules;
/*
enum g.a.b.e0.a.d.m1.class {
}
*/
      7: map<i32,map<string,string>> messages;
      8: PaymentMyCode myCode;
      9: PayInvoiceSetting invoice;
/*
enum g.a.b.e0.a.d.t.class {
}
*/
     10: map<i32,map<string,string>> features;
}

struct CreatedPaymentUserInfoEx{
      1: bool carryOverAvailable;
}

struct PaymentCancellationInfo{
/*
enum g.a.b.e0.a.d.qd.class {
}
*/
      1: i32 transactionType;
      3: i64 cancelDate;
      4: DisplayMoney cancelAmount;
      5: DisplayMoney remainAmount;
}

struct PaymentLineCardInfo{
      1: string designCode;
      2: string imageUrl;
}

struct PaymentUserInfoDigest{
      1: string userId;
/*
enum g.a.b.e0.a.d.md.class {
}
*/
      2: i32 status;
      3: string country;
/*
enum g.a.b.e0.a.d.jd.class {
}
*/
      4: i32 grade;
/*
enum g.a.b.e0.a.d.s1.class {
}
*/
      5: i32 passwordVersion;
      6: bool joined;
}

struct DisplayMoney{
      1: string amount;
      2: string amountString;
      3: string currency;
}

struct PaymentCardValidationRule{
      2: string regex;
      3: string grouping;
      4: i32 maxLength;
      5: string cardBrandName;
      6: string securityCodeHelp;
/*
enum g.a.b.e0.a.d.k0.class {
}
*/
      7: i32 cardBrand;
}

struct PaymentLineCardIssueForm{
/*
enum g.a.b.e0.a.d.wc.class {
}
*/
      1: i32 requiredTermsOfServiceBundle;
      2: list<PaymentLineCardInfo> availableLineCards;
}

struct PaymentUserJobInfo{
      1: string jobId;
      2: string jobName;
}

struct RSAEncryptedLoginInfo{
      1: string loginId;
      2: string loginPassword;
}

struct LinePayAccountInfo{
/*
enum g.a.b.e0.a.d.q.class {
}
*/
      1: i32 accountType;
      2: string accountId;
      3: string nickname;
/*
enum g.a.b.e0.a.d.p.class {
}
*/
      4: i32 status;
      5: string financialCorporationName;
      6: string realAccountNo;
      7: string currency;
/*
enum g.a.b.e0.a.d.c.class {
}
*/
      8: i32 accountProductType;
      9: string branchName;
     10: bool withdraw;
     11: bool deposit;
     12: string ownerName;
     13: string imageUrl;
     14: bool primary;
     15: string accountProductName;
     16: bool holderNameRegistered;
/*
enum g.a.b.e0.a.d.k0.class {
}
*/
     17: i32 cardBrand;
     18: string debitImageUrl;
     19: bool lineCard;
     20: string lineCardImageId;
     21: string textColor;
     22: string placeholderColor;
     23: string backgroundColor;
/*
enum g.a.b.e0.a.d.s.class {
}
*/
     24: set<i32> extendedFeatures;
}

struct RSAEncryptedPassword{
      1: string encrypted;
      2: string keyName;
}

struct PaymentCountrySettingInfoEx{
      3: i32 asyncWaitTimeout;
      4: bool creditcardSupport;
      5: PaymentCybsInfo cybs;
      6: bool crossBorderTransfer;
/*
enum g.a.b.e0.a.d.d0.class {
}
*/
      7: i32 addressSearchType;
      8: list<PaymentCountrySettingMenu> menu;
/*
enum g.a.b.e0.a.d.k.class {
}
*/
      9: list<i32> depositMethods;
     10: map<string,PaymentUrlInfo> urls;
/*
enum g.a.b.e0.a.d.gd.class {
}
*/
     11: map<i32,list<string>> urlGroups;
     12: bool paygEnabled;
     13: PaymentCountrySettingLimitInfo limit;
     14: bool emailRequired;
/*
enum g.a.b.e0.a.d.wc.class {
}
*/
     15: map<i32,list<PaymentTosUrlBundle>> tosUrlBundles;
/*
enum g.a.b.e0.a.d.v1.class {
}
*/
     16: i32 registrationType;
     17: bool pointSupport;
     18: string registrationUrl;
     19: string introUrl;
     20: bool touchIdMenuAvailable;
     21: bool myCodePasswordRequired;
/*
enum g.a.b.e0.a.d.jd.class {
}
*/
     22: map<i32,list<PayWithdrawStaticMenu>> settingWithdrawStaticMenu;
      1: bool balanceSupport;
/*
enum g.a.b.e0.a.d.o0.class {
}
*/
      2: i32 balanceType;
}

struct ThRegionalInfo{
      1: string firstName;
      2: string lastName;
      3: string identificationNo;
/*
enum g.a.b.e0.a.d.i1.class {
}
*/
      4: i32 identificationType;
}

struct PaymentCountrySettingLimitInfo{
      1: i32 depositBank;
      2: i32 withdrawalBank;
      3: i32 possessionOfCards;
}

struct PaymentMyCode{
      1: string shortcutUrl;
      2: string shortcutIconUrl;
      3: string shortcutIconText;
      4: string shortcutSchemeUrl;
}

struct MoneyRange{
      1: string min;
      2: string max;
}

struct PaymentCountrySettingMenu{
      6: string name;
/*
enum g.a.b.e0.a.d.t0.class {
}
*/
      7: i32 linkType;
/*
enum g.a.b.e0.a.d.s0.class {
}
*/
      8: i32 badgeType;
      9: string androidImageUrl;
     10: string iosImageUrl;
     11: string androidLinkUrl;
     12: string androidPackageName;
     13: string iosLinkUrl;
     14: string androidStoreUrl;
     15: string iosStoreUrl;
     17: i64 sequence;
/*
enum g.a.b.e0.a.d.n1.class {
}
*/
     18: i32 displayType;
     16: i64 id;
/*
enum g.a.b.e0.a.d.u0.class {
}
*/
      1: i32 type;
      2: i32 order;
      3: string imgUrl;
      4: string touchImgUrl;
      5: string linkUrl;
}

struct TransferRequestInfo{
/*
enum g.a.b.e0.a.d.dd.class {
}
*/
     11: i32 status;
     13: list<TransferRequestReceivedInfo> requestReceivedInfo;
     14: map<string,string> messageMetadata;
     15: DisplayMoney moneyAmount;
     16: i32 totalMemberCount;
     17: i32 startNum;
     18: string messageId;
     19: i32 otherMemberCount;
      1: string requestId;
/*
enum g.a.b.e0.a.d.ed.class {
}
*/
      2: i32 requestType;
      3: string requestLineMemberId;
      4: string requestLineUserNickname;
      5: string receiveLineMemberId;
      6: string receiveLineUserNickname;
      9: string sendMessage;
     10: i64 requestDate;
}

struct PaymentSettingsMenuInfo{
      1: string certificationStatus;
      2: string memberGradeType;
      3: bool recieveMoneyEnabled;
      4: list<PaymentSettingsMenuInfoAccount> accounts;
      5: string bankAccountSettingUrl;
      6: bool lineCardUser;
}

struct TransferRequestReceivedInfo{
      1: string requestId;
/*
enum g.a.b.e0.a.d.ed.class {
}
*/
      2: i32 requestType;
      3: string receiveLineMemberId;
      4: string receiveLineUserNickname;
      7: string sendMessage;
      8: i64 requestDate;
/*
enum g.a.b.e0.a.d.dd.class {
}
*/
      9: i32 status;
     10: DisplayMoney moneyAmount;
}

struct PaymentPointInfo{
      1: DisplayMoney point;
      2: bool needInquiry;
}

struct PaymentSettingsMenuInfoAccount{
      1: string financialCorporationName;
      2: string accountNo;
      4: string imageUrl;
}

struct UnregisterAvailabilityInfo{
/*
enum g.a.b.e0.a.d.ud.class {
}
*/
      1: i32 result;
      2: string message;
}

struct PayInvitationInfo{
      1: string invitationId;
/*
enum g.a.b.e0.a.d.v.class {
}
*/
      2: i32 invitationType;
      3: string message;
      4: i64 createDate;
      5: list<PayInvitationUserInfo> receivedInfo;
}

struct PaymentRegionalInfo{
      1: ThRegionalInfo th;
}

struct PaymentTTSPinCodeVerificationInfo{
      1: bool authPasswordRequired;
      2: string message;
}

struct PaymentCybsInfo{
      1: string merchantId;
      2: string orgId;
      3: string serverUrl;
}

struct PaymentTosUrlBundle{
      1: list<string> urls;
      2: string prefixText;
}

struct PayInvitationUserInfo{
      1: string lineMemberId;
}

struct PaymentDetailInfo{
     10: string merchantTelNo;
     11: string merchantRepresentative;
     12: list<PaymentCancellationInfo> cancelList;
     13: DisplayMoney moneyAmount;
     14: string accountNickname;
     15: string merchantEmail;
     16: i64 confirmDate;
     17: string merchantLabel;
      1: string transactionId;
      2: i64 transactionDate;
/*
enum g.a.b.e0.a.d.qd.class {
}
*/
      3: i32 transactionType;
      4: string productName;
/*
enum g.a.b.e0.a.d.p1.class {
}
*/
      6: i32 paymethod;
      7: string cardCorporation;
      8: string maskedCardNumber;
      9: string merchantName;
}

struct PaymentRequiredAgreementsInfo{
      1: string title;
      2: string desc;
      3: string linkName;
      4: string linkUrl;
      5: list<string> newAgreements;
}

struct PayInvoiceSetting{
      1: string regexp;
      2: i32 maxLength;
}

struct PaymentEligibleFriendStatus{
      1: string mid;
/*
enum g.a.b.e0.a.d.m.class {
}
*/
      2: i32 status;
}

struct PaymentTradeInfo{
     14: string helpUrl;
     15: string guideMessage;
      1: string chargeRequestId;
/*
enum g.a.b.e0.a.d.yc.class {
}
*/
      2: i32 chargeRequestType;
      3: i64 chargeRequestYmdt;
      4: string tradeNumber;
      7: string agencyNo;
      8: string confirmNo;
      9: i64 expireYmd;
     10: DisplayMoney moneyAmount;
     11: i64 completeYmdt;
     12: string paymentProcessCorp;
/*
enum g.a.b.e0.a.d.zc.class {
}
*/
     13: i32 status;
}

struct PayStatusInfo{
/*
enum g.a.b.e0.a.d.z.class {
}
*/
      1: i32 status;
}

struct PaymentException{
/*
enum g.a.b.e0.a.d.y0.class {
}
*/
      1: i32 errorCode;
      2: string debugReason;
      3: string serverDefinedMessage;
      4: map<string,string> errorDetailMap;
}

service _backing_thrift_info_src4_g_a_b_e0_a_d{
    void setMinimumBalanceNotification(
        1 : bool enable,
        2 : string minBalance
    )throws(1: PaymentException e);

    void cancelTradeRequest(
        1 : string chargeRequestId
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.n0.class {
}
*/
    PaymentLineCardIssueForm getLineCardIssueForm(
        1 : i32 resolutionType
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.f0.class {
}
*/
/*
enum g.a.b.e0.a.d.a1.class {
}
*/
    void checkAuthType(
        1 : i32 authType,
        2 : i32 featureType,
        3 : string accountId
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.d.class {
}
*/
/*
enum g.a.b.e0.a.d.c.class {
}
*/
    PaymentAuthenticationInfo authenticateUsingBankAccountEx(
        1 : i32 type,
        2 : string bankId,
        3 : string bankBranchId,
        4 : string realAccountNo,
        5 : i32 accountProductCode,
        6 : string authToken
    )throws(1: PaymentException e);

    PayInvitationInfo listInvitationInfo(
        1 : string invitationBundleId
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.i.class {
}
*/
    void authenticateUsingCitizenIdAsync(
        1 : string requestToken,
        2 : string citizenId,
        3 : string laserNo,
        4 : string firstName,
        5 : string lastName,
        6 : string birthday,
        7 : string authToken,
        8 : i32 type
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.a1.class {
}
*/
    void issueOtpAsync(
        1 : string requestToken,
        2 : i32 featureType,
        3 : string accountId,
        4 : string toMid,
        5 : string amount,
        6 : bool isManual
    )throws(1: PaymentException e);

    void changeAgreementStatus(
        1 : set<string> agreements
    )throws(1: PaymentException e);

    PaymentUserInfoDigest getUserInfoDigest(
    )throws(1: PaymentException e);

    void updatePasswordLock(
        1 : bool entry
    )throws(1: PaymentException e);

    PaymentPointInfo getPoint(
    )throws(1: PaymentException e);

    void resumeSuspendedUser(
        1 : RSAEncryptedPassword password,
        2 : string sessionToken
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.a1.class {
}
*/
    PaymentFlowTypeInfo getFlowType(
        1 : i32 featureType,
        2 : string accountId,
        3 : bool onlyPointPayment
    )throws(1: PaymentException e);

    list<TransferRequestInfo> listTransferRequests(
        1 : string type,
        2 : i64 startDate,
        3 : i64 endDate,
        4 : i32 startNum,
        5 : i32 count
    )throws(1: PaymentException e);

    void enablePointForOneTimeKey(
        1 : bool usePoint
    )throws(1: PaymentException e);

    void validatePayg(
        1 : string paygBody
    )throws(1: PaymentException e);

    void getAccountBalanceAsync(
        1 : string requestToken,
        2 : string accountId
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.id.class {
}
*/
    void updateUserGeneralSettings(
        1 : map<i32,string> settings
    )throws(1: PaymentException e);

    PaymentAuthenticationInfo authenticateUsingNameAndBirthdayEx(
        1 : string firstName,
        2 : string lastName,
        3 : string phoneticFirstName,
        4 : string phoneticLastName,
        5 : string birthday,
        6 : string authToken
    )throws(1: PaymentException e);

    void createTransferRequestAsync(
        1 : string requestToken,
        2 : string sendMessage,
        3 : string currency,
        4 : list<PaymentTransferRequest> requests,
        5 : map<string,string> messageMetadata,
        6 : string targetChatId,
        7 : string imageObsPath
    )throws(1: PaymentException e);

    PaymentCountrySettingInfoEx getCountrySettingV4(
        1 : string processor,
        2 : string manufacturer,
        3 : string model
    )throws(1: PaymentException e);

    string issueFinanceRequestToken(
    )throws(1: PaymentException e);

    void postPopupButtonEvents(
        1 : string buttonId,
        2 : map<string,string> checkboxes
    )throws(1: PaymentException e);

    void removeUser(
        1 : bool balanceDisclaimerAgreement,
        2 : RSAEncryptedPassword password
    )throws(1: PaymentException e);

    void requestIdentification(
        1 : string frontPhotoOBSHash,
        2 : string backPhotoOBSHash,
        3 : string trackingId
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.n.class {
}
*/
/*
enum g.a.b.e0.a.d.m0.class {
}
*/
    CheckOperationResult checkOperationTimeEx(
        1 : i32 type,
        2 : string lpAccountNo,
        3 : i32 channelType
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.d.class {
}
*/
    list<BankInfo> listBanks(
        1 : i32 type
    )throws(1: PaymentException e);

    void carryForwardLinePayAccount(
        1 : string authToken
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.n0.class {
}
*/
/*
enum g.a.b.e0.a.d.rc.class {
}
*/
    PaymentCacheableSettings getCacheableSettings(
        1 : i32 resolutionType,
        2 : map<i32,i64> timestamps
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.a0.class {
}
*/
    PaymentTransferTargetInfo getTransferTargetInfo(
        1 : string toMid,
        2 : i32 searchType
    )throws(1: PaymentException e);

    void createIpassAccount(
    )throws(1: PaymentException e);

    string getPaymentUrlByKey(
        1 : string key
    )throws(1: PaymentException e);

    string issueTTSPinCodeV2(
        1 : string authToken
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.d0.class {
}
*/
    list<PaymentAddressSearchResult> searchAddress(
        1 : i32 type,
        2 : string query
    )throws(1: PaymentException e);

    void verifyPasswordStrengthAsync(
        1 : string requestToken,
        2 : RSAEncryptedPassword password
    )throws(1: PaymentException e);

    string issueNonce(
    )throws(1: PaymentException e);

    list<BankBranchInfo> getBankBranches(
        1 : string financialCorpId,
        2 : string query,
        3 : i32 startNum,
        4 : i32 count
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.d.class {
}
*/
    list<LinePayAccountInfo> listLinePayBankAccounts(
        1 : i32 type,
        2 : string transactionReserveId
    )throws(1: PaymentException e);

    void authPasswordAsync(
        1 : string requestToken,
        2 : RSAEncryptedPassword password,
        3 : string authRequestId,
        4 : string sessionToken
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.yc.class {
}
*/
/*
enum g.a.b.e0.a.d.zc.class {
}
*/
    list<PaymentTradeInfo> listTradeNumbers(
        1 : i32 type,
        2 : i64 startDate,
        3 : i64 endDate,
        4 : i32 startNum,
        5 : i32 count,
        6 : i32 status
    )throws(1: PaymentException e);

    void bindDevice(
        1 : RSAEncryptedPassword password,
        2 : string deviceIdentifier,
        3 : string publicValueX,
        4 : string publicValueY
    )throws(1: PaymentException e);

    void changePasswordAsync(
        1 : string requestToken,
        2 : RSAEncryptedPassword currentPassword,
        3 : RSAEncryptedPassword newPassword,
        4 : string authToken
    )throws(1: PaymentException e);

    string issueRequestToken(
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.vd.class {
}
*/
    UnregisterAvailabilityInfo checkCanUnregisterEx(
        1 : i32 type
    )throws(1: PaymentException e);

    PaymentSettingsMenuInfo getSettingsMenuInfo(
    )throws(1: PaymentException e);

    void validateIdPasswordAsync(
        1 : string requestToken,
        91: string keyName,
        2 : RSAEncryptedLoginInfo loginInfo,
        3 : string accountId
    )throws(1: PaymentException e);

    PaymentDetailInfo getPaymentDetail(
        1 : string transactionId
    )throws(1: PaymentException e);

    void createDutchTransferRequestAsync(
        1 : string requestToken,
        2 : string sendMessage,
        3 : string currency,
        4 : list<PaymentTransferRequest> requests,
        5 : map<string,string> messageMetadata,
        6 : string targetChatId,
        7 : string imageObsPath
    )throws(1: PaymentException e);

    PaymentRequiredAgreementsInfo getRequiredAgreements(
    )throws(1: PaymentException e);

    BalanceInfo getBalance(
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.yc.class {
}
*/
    PaymentTradeInfo requestTradeNumber(
        1 : string requestToken,
        2 : i32 requestType,
        3 : string amount,
        4 : string name
    )throws(1: PaymentException e);

    string issueTrackingTicket(
    )throws(1: PaymentException e);

    list<PaymentTransactionHistoryInfo> listTransactionHistory(
        1 : i32 startNum,
        2 : i32 count
    )throws(1: PaymentException e);

    PaymentAuthenticationInfo authenticateUsingReferenceNoEx(
        1 : string referenceNo,
        2 : string authToken
    )throws(1: PaymentException e);

    list<PaymentUserJobInfo> listJobs(
    )throws(1: PaymentException e);

    PaymentTTSPinCodeVerificationInfo verifyTTSPinCode(
        1 : string issueSeq,
        2 : string pinCode,
        3 : string authToken
    )throws(1: PaymentException e);

    TransferRequestInfo getTransferRequestInfo(
        1 : string requestId,
        2 : i32 startNum,
        3 : i32 count
    )throws(1: PaymentException e);

    PayStatusInfo getStatusInfo(
        1 : string targetStatusFetchId
    )throws(1: PaymentException e);

    void removeLinePayAccount(
        1 : string accountId
    )throws(1: PaymentException e);

    void inviteFriends(
        1 : list<string> friendMids,
        2 : string message,
        3 : map<string,string> messageMetadata,
        4 : string imageObsPath
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.f1.class {
}
*/
    list<PaymentEligibleFriendStatus> validateEligibleFriends(
        1 : list<string> friends,
        2 : i32 type
    )throws(1: PaymentException e);

    PaymentAuthenticationInfo authenticateUsingBalanceEx(
        1 : string balanceAmount,
        2 : string authToken
    )throws(1: PaymentException e);

    string issueCreditCardToken(
        1 : string accountId
    )throws(1: PaymentException e);

    void authPassword(
        1 : RSAEncryptedPassword password,
        2 : string authRequestId,
        3 : string sessionToken
    )throws(1: PaymentException e);

    LinePayAccountInfo getLinePayAccount(
        1 : string accountId
    )throws(1: PaymentException e);

    void registerBarcodeAsync(
        1 : string requestToken,
        2 : string barcodeRequestId,
        3 : string barcode,
        4 : RSAEncryptedPassword password
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.j1.class {
}
*/
    CreatedPaymentUserInfoEx createAccountV4(
        1 : RSAEncryptedPassword password,
        2 : set<string> agreements,
        3 : i32 joinPath,
        4 : string transactionReserveId,
        5 : string deviceIdentifier,
        6 : string publicValueX,
        7 : string publicValueY,
        8 : PaymentRegionalInfo regionalInfo
    )throws(1: PaymentException e);

    void cancelTransferRequests(
        1 : string requestId,
        2 : list<string> mids
    )throws(1: PaymentException e);

/*
enum g.a.b.e0.a.d.a.class {
}
*/
    PaymentAvailableAuth checkAvailableAuthMethods(
        1 : i32 type
    )throws(1: PaymentException e);

}


