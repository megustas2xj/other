

struct PaymentTransactionHistoryInfo{
      1: string message;
      2: i32 type;
      3: i64 createdDate;
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
      1: i32 flowType;
      2: i32 authType;
      3: map<i32,list<string>> handleableOps;
      4: list<PaymentFlowTypeCustom> customs;
}

struct BankInfo{
      1: i64 bankId;
      2: string financialCorpId;
      3: string financialCorpCode;
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
      1: map<i32,i64> timestamps;
      2: map<i32,list<PaymentCountrySettingMenu>> menus;
      3: map<string,PaymentUrlInfo> urls;
      4: map<i32,list<string>> urlGroups;
      5: map<i32,list<PaymentTosUrlBundle>> tosUrlBundles;
      6: list<PaymentCardValidationRule> cardValidationRules;
      7: map<i32,map<string,string>> messages;
      8: PaymentMyCode myCode;
      9: PayInvoiceSetting invoice;
     10: map<i32,map<string,string>> features;
}

struct CreatedPaymentUserInfoEx{
      1: bool carryOverAvailable;
}

struct PaymentCancellationInfo{
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
      2: i32 status;
      3: string country;
      4: i32 grade;
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
      7: i32 cardBrand;
}

struct PaymentLineCardIssueForm{
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
      1: i32 accountType;
      2: string accountId;
      3: string nickname;
      4: i32 status;
      5: string financialCorporationName;
      6: string realAccountNo;
      7: string currency;
      8: i32 accountProductType;
      9: string branchName;
     10: bool withdraw;
     11: bool deposit;
     12: string ownerName;
     13: string imageUrl;
     14: bool primary;
     15: string accountProductName;
     16: bool holderNameRegistered;
     17: i32 cardBrand;
     18: string debitImageUrl;
     19: bool lineCard;
     20: string lineCardImageId;
     21: string textColor;
     22: string placeholderColor;
     23: string backgroundColor;
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
      7: i32 addressSearchType;
      8: list<PaymentCountrySettingMenu> menu;
      9: list<i32> depositMethods;
     10: map<string,PaymentUrlInfo> urls;
     11: map<i32,list<string>> urlGroups;
     12: bool paygEnabled;
     13: PaymentCountrySettingLimitInfo limit;
     14: bool emailRequired;
     15: map<i32,list<PaymentTosUrlBundle>> tosUrlBundles;
     16: i32 registrationType;
     17: bool pointSupport;
     18: string registrationUrl;
     19: string introUrl;
     20: bool touchIdMenuAvailable;
     21: bool myCodePasswordRequired;
     22: map<i32,list<PayWithdrawStaticMenu>> settingWithdrawStaticMenu;
      1: bool balanceSupport;
      2: i32 balanceType;
}

struct ThRegionalInfo{
      1: string firstName;
      2: string lastName;
      3: string identificationNo;
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
      7: i32 linkType;
      8: i32 badgeType;
      9: string androidImageUrl;
     10: string iosImageUrl;
     11: string androidLinkUrl;
     12: string androidPackageName;
     13: string iosLinkUrl;
     14: string androidStoreUrl;
     15: string iosStoreUrl;
     17: i64 sequence;
     18: i32 displayType;
     16: i64 id;
      1: i32 type;
      2: i32 order;
      3: string imgUrl;
      4: string touchImgUrl;
      5: string linkUrl;
}

struct TransferRequestInfo{
     11: i32 status;
     13: list<TransferRequestReceivedInfo> requestReceivedInfo;
     14: map<string,string> messageMetadata;
     15: DisplayMoney moneyAmount;
     16: i32 totalMemberCount;
     17: i32 startNum;
     18: string messageId;
     19: i32 otherMemberCount;
      1: string requestId;
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
      2: i32 requestType;
      3: string receiveLineMemberId;
      4: string receiveLineUserNickname;
      7: string sendMessage;
      8: i64 requestDate;
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
      1: i32 result;
      2: string message;
}

struct PayInvitationInfo{
      1: string invitationId;
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
      3: i32 transactionType;
      4: string productName;
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
      2: i32 status;
}

struct PaymentTradeInfo{
     14: string helpUrl;
     15: string guideMessage;
      1: string chargeRequestId;
      2: i32 chargeRequestType;
      3: i64 chargeRequestYmdt;
      4: string tradeNumber;
      7: string agencyNo;
      8: string confirmNo;
      9: i64 expireYmd;
     10: DisplayMoney moneyAmount;
     11: i64 completeYmdt;
     12: string paymentProcessCorp;
     13: i32 status;
}

struct PayStatusInfo{
      1: i32 status;
}

struct PaymentException{
      1: i32 errorCode;
      2: string debugReason;
      3: string serverDefinedMessage;
      4: map<string,string> errorDetailMap;
}

service g_a_b_e0_a_d{
    void createDutchTransferRequestAsync(
        1 : string requestToken,
        2 : string sendMessage,
        3 : string currency,
        4 : list<PaymentTransferRequest> requests,
        5 : map<string,string> messageMetadata,
        6 : string targetChatId,
        7 : string imageObsPath
    )throws(1: PaymentException e);

    void createIpassAccount(
    )throws(1: PaymentException e);

    list<PaymentTransactionHistoryInfo> listTransactionHistory(
        1 : i32 startNum,
        2 : i32 count
    )throws(1: PaymentException e);

    void enablePointForOneTimeKey(
        1 : bool usePoint
    )throws(1: PaymentException e);

    list<TransferRequestInfo> listTransferRequests(
        1 : string type,
        2 : i64 startDate,
        3 : i64 endDate,
        4 : i32 startNum,
        5 : i32 count
    )throws(1: PaymentException e);

    list<PaymentUserJobInfo> listJobs(
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

    void authPasswordAsync(
        1 : string requestToken,
        2 : RSAEncryptedPassword password,
        3 : string authRequestId,
        4 : string sessionToken
    )throws(1: PaymentException e);

    PaymentSettingsMenuInfo getSettingsMenuInfo(
    )throws(1: PaymentException e);

    void authPassword(
        1 : RSAEncryptedPassword password,
        2 : string authRequestId,
        3 : string sessionToken
    )throws(1: PaymentException e);

    PayStatusInfo getStatusInfo(
        1 : string targetStatusFetchId
    )throws(1: PaymentException e);

    void changeAgreementStatus(
        1 : set<string> agreements
    )throws(1: PaymentException e);

    PaymentCacheableSettings getCacheableSettings(
        1 : i32 resolutionType,
        2 : map<i32,i64> timestamps
    )throws(1: PaymentException e);

    void requestIdentification(
        1 : string frontPhotoOBSHash,
        2 : string backPhotoOBSHash,
        3 : string trackingId
    )throws(1: PaymentException e);

    PaymentPointInfo getPoint(
    )throws(1: PaymentException e);

    PaymentAuthenticationInfo authenticateUsingBalanceEx(
        1 : string balanceAmount,
        2 : string authToken
    )throws(1: PaymentException e);

    void postPopupButtonEvents(
        1 : string buttonId,
        2 : map<string,string> checkboxes
    )throws(1: PaymentException e);

    void resumeSuspendedUser(
        1 : RSAEncryptedPassword password,
        2 : string sessionToken
    )throws(1: PaymentException e);

    BalanceInfo getBalance(
    )throws(1: PaymentException e);

    list<PaymentAddressSearchResult> searchAddress(
        1 : i32 type,
        2 : string query
    )throws(1: PaymentException e);

    PaymentAuthenticationInfo authenticateUsingBankAccountEx(
        1 : i32 type,
        2 : string bankId,
        3 : string bankBranchId,
        4 : string realAccountNo,
        5 : i32 accountProductCode,
        6 : string authToken
    )throws(1: PaymentException e);

    void carryForwardLinePayAccount(
        1 : string authToken
    )throws(1: PaymentException e);

    void removeLinePayAccount(
        1 : string accountId
    )throws(1: PaymentException e);

    void checkAuthType(
        1 : i32 authType,
        2 : i32 featureType,
        3 : string accountId
    )throws(1: PaymentException e);

    CheckOperationResult checkOperationTimeEx(
        1 : i32 type,
        2 : string lpAccountNo,
        3 : i32 channelType
    )throws(1: PaymentException e);

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

    string issueTTSPinCodeV2(
        1 : string authToken
    )throws(1: PaymentException e);

    void validatePayg(
        1 : string paygBody
    )throws(1: PaymentException e);

    string issueFinanceRequestToken(
    )throws(1: PaymentException e);

    void cancelTransferRequests(
        1 : string requestId,
        2 : list<string> mids
    )throws(1: PaymentException e);

    PayInvitationInfo listInvitationInfo(
        1 : string invitationBundleId
    )throws(1: PaymentException e);

    list<BankBranchInfo> getBankBranches(
        1 : string financialCorpId,
        2 : string query,
        3 : i32 startNum,
        4 : i32 count
    )throws(1: PaymentException e);

    void updatePasswordLock(
        1 : bool entry
    )throws(1: PaymentException e);

    PaymentTradeInfo requestTradeNumber(
        1 : string requestToken,
        2 : i32 requestType,
        3 : string amount,
        4 : string name
    )throws(1: PaymentException e);

    string issueTrackingTicket(
    )throws(1: PaymentException e);

    PaymentRequiredAgreementsInfo getRequiredAgreements(
    )throws(1: PaymentException e);

    void setMinimumBalanceNotification(
        1 : bool enable,
        2 : string minBalance
    )throws(1: PaymentException e);

    PaymentLineCardIssueForm getLineCardIssueForm(
        1 : i32 resolutionType
    )throws(1: PaymentException e);

    void verifyPasswordStrengthAsync(
        1 : string requestToken,
        2 : RSAEncryptedPassword password
    )throws(1: PaymentException e);

    void getAccountBalanceAsync(
        1 : string requestToken,
        2 : string accountId
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

    PaymentCountrySettingInfoEx getCountrySettingV4(
        1 : string processor,
        2 : string manufacturer,
        3 : string model
    )throws(1: PaymentException e);

    void updateUserGeneralSettings(
        1 : map<i32,string> settings
    )throws(1: PaymentException e);

    UnregisterAvailabilityInfo checkCanUnregisterEx(
        1 : i32 type
    )throws(1: PaymentException e);

    void removeUser(
        1 : bool balanceDisclaimerAgreement,
        2 : RSAEncryptedPassword password
    )throws(1: PaymentException e);

    PaymentUserInfoDigest getUserInfoDigest(
    )throws(1: PaymentException e);

    PaymentAvailableAuth checkAvailableAuthMethods(
        1 : i32 type
    )throws(1: PaymentException e);

    PaymentTransferTargetInfo getTransferTargetInfo(
        1 : string toMid,
        2 : i32 searchType
    )throws(1: PaymentException e);

    list<BankInfo> listBanks(
        1 : i32 type
    )throws(1: PaymentException e);

    void registerBarcodeAsync(
        1 : string requestToken,
        2 : string barcodeRequestId,
        3 : string barcode,
        4 : RSAEncryptedPassword password
    )throws(1: PaymentException e);

    PaymentAuthenticationInfo authenticateUsingNameAndBirthdayEx(
        1 : string firstName,
        2 : string lastName,
        3 : string phoneticFirstName,
        4 : string phoneticLastName,
        5 : string birthday,
        6 : string authToken
    )throws(1: PaymentException e);

    string issueCreditCardToken(
        1 : string accountId
    )throws(1: PaymentException e);

    string issueNonce(
    )throws(1: PaymentException e);

    void changePasswordAsync(
        1 : string requestToken,
        2 : RSAEncryptedPassword currentPassword,
        3 : RSAEncryptedPassword newPassword,
        4 : string authToken
    )throws(1: PaymentException e);

    list<PaymentTradeInfo> listTradeNumbers(
        1 : i32 type,
        2 : i64 startDate,
        3 : i64 endDate,
        4 : i32 startNum,
        5 : i32 count,
        6 : i32 status
    )throws(1: PaymentException e);

    string issueRequestToken(
    )throws(1: PaymentException e);

    string getPaymentUrlByKey(
        1 : string key
    )throws(1: PaymentException e);

    PaymentDetailInfo getPaymentDetail(
        1 : string transactionId
    )throws(1: PaymentException e);

    void inviteFriends(
        1 : list<string> friendMids,
        2 : string message,
        3 : map<string,string> messageMetadata,
        4 : string imageObsPath
    )throws(1: PaymentException e);

    PaymentAuthenticationInfo authenticateUsingReferenceNoEx(
        1 : string referenceNo,
        2 : string authToken
    )throws(1: PaymentException e);

    void bindDevice(
        1 : RSAEncryptedPassword password,
        2 : string deviceIdentifier,
        3 : string publicValueX,
        4 : string publicValueY
    )throws(1: PaymentException e);

    void validateIdPasswordAsync(
        1 : string requestToken,
        91: string keyName,
        2 : RSAEncryptedLoginInfo loginInfo,
        3 : string accountId
    )throws(1: PaymentException e);

    PaymentFlowTypeInfo getFlowType(
        1 : i32 featureType,
        2 : string accountId,
        3 : bool onlyPointPayment
    )throws(1: PaymentException e);

    void cancelTradeRequest(
        1 : string chargeRequestId
    )throws(1: PaymentException e);

    LinePayAccountInfo getLinePayAccount(
        1 : string accountId
    )throws(1: PaymentException e);

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

    void issueOtpAsync(
        1 : string requestToken,
        2 : i32 featureType,
        3 : string accountId,
        4 : string toMid,
        5 : string amount,
        6 : bool isManual
    )throws(1: PaymentException e);

    list<LinePayAccountInfo> listLinePayBankAccounts(
        1 : i32 type,
        2 : string transactionReserveId
    )throws(1: PaymentException e);

    list<PaymentEligibleFriendStatus> validateEligibleFriends(
        1 : list<string> friends,
        2 : i32 type
    )throws(1: PaymentException e);

}

