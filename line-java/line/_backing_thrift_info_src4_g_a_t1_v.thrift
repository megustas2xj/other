include "g_a_t1_v.thrift"


struct BalanceShortcut{
      1: bool osPayment;
      2: i32 iconPosition;
      3: string iconUrl;
      4: string iconText;
      5: string iconAltText;
      6: string linkUrl;
      7: string tsTargetId;
}

struct ModuleResponse{
      1: Module moduleInstance;
}

struct BalanceShortcutInfo{
      1: list<BalanceShortcut> balanceShortcuts;
      2: BalanceShortcut osPaymentFallbackShortcut;
}

struct MyRank{
/*
enum g.a.t1.v.d0.class {
}
*/
      1: i32 rankType;
      2: string rankName;
      3: string iconUrl;
      4: string linkUrl;
      5: MyRankBenefit myRankBenefit;
}

struct CurrencyProperty{
      1: string code;
      2: string symbol;
/*
enum g.a.t1.v.d.class {
}
*/
      3: i32 position;
      4: i32 scale;
}

struct MyRankBenefit{
      1: string rewardCouponCount;
      2: string rewardCouponCountLinkUrl;
      3: string payReturnPointRate;
      4: string payReturnPointRateLinkUrl;
}

struct GetBalanceSummaryRequest{
}

struct NotFound{
}

struct GetBalanceSummaryRequestV2{
}

struct NotModified{
}

struct GetBalanceSummaryResponse{
      1: LinePayInfo payInfo;
      2: LinePointInfo pointInfo;
      3: LineCoinInfo coinInfo;
}

struct SmartChannelRecommendation{
      1: i32 minDisplayDuration;
      2: string title;
      3: string descriptionText;
      4: string labelText;
      5: string imageUrl;
      6: string bgColorCode;
      7: string linkUrl;
      8: string impEventUrl;
      9: string clickEventUrl;
     10: string muteEventUrl;
     11: string upvoteEventUrl;
     12: string downvoteEventUrl;
}

struct GetBalanceSummaryResponseV2{
      1: optional LinePayInfo payInfo;
      2: optional list<LinePayPromotion> payPromotions;
      3: optional MyRank myRank;
      4: optional LinePointInfo pointInfo;
      5: optional BalanceShortcutInfo balanceShortcutInfo;
}

struct GetModuleRequest{
      1: string id;
      2: optional string etag;
      3: optional string recommendedModelId;
}

struct WalletException{
/*
enum g.a.t1.v.h0.class {
}
*/
      1: i32 code;
      2: string reason;
      3: map<string,string> attributes;
}

struct GetModuleResponse{
      1: ModuleResponse moduleResponse;
      2: NotModified notModified;
      3: NotFound notFound;
}

struct GetModulesRequest{
      1: optional string etag;
}

struct GetModulesRequestV2{
      1: optional string etag;
}

struct GetModulesResponse{
      1: ModuleAggregationResponse moduleAggregationResponse;
      2: NotModified notModified;
}

struct GetModulesResponseV2{
      1: ModuleAggregationResponseV2 moduleAggregationResponse;
      2: NotModified notModified;
}

struct GetSmartChannelRecommendationsRequest{
      1: i32 maxResults;
      2: string placement;
      3: bool testMode;
}

struct GetSmartChannelRecommendationsResponse{
      1: list<SmartChannelRecommendation> smartChannelRecommendations;
      2: i32 minInterval;
      3: string requestId;
}

struct IpassTokenProperty{
      1: string token;
      2: string tokenIssuedTimestamp;
}

struct LineCoinInfo{
      1: string balanceAmount;
      2: string historyUrl;
}

struct LinePayInfo{
      1: string balanceAmount;
      2: CurrencyProperty currencyProperty;
/*
enum g.a.t1.v.u.class {
}
*/
      3: i32 payMemberStatus;
      4: string applicationUrl;
      5: string chargeUrl;
/*
enum g.a.t1.v.t.class {
}
*/
      6: i32 payMemberGrade;
      7: string country;
      8: string referenceNumber;
      9: optional IpassTokenProperty ipassTokenProperty;
}

struct LinePayPromotion{
      1: string mainText;
      2: optional string subText;
      3: optional string buttonText;
      4: optional string iconUrl;
      5: string linkUrl;
      6: string tsTargetId;
}

struct LinePointInfo{
      1: string balanceAmount;
      2: string applicationUrl;
}

struct Module{
      1: string id;
      2: string templateName;
      3: map<string,string> fields;
      4: list<map<string,string>> elements;
      5: string etag;
      6: i32 refreshTimeSec;
      7: string name;
      8: bool recommendable;
      9: optional string recommendedModelId;
}

struct ModuleAggregationResponse{
      1: list<Module> modules;
      2: string etag;
      3: i32 refreshTimeSec;
}

struct ModuleAggregationResponseV2{
      1: list<Module> fixedModules;
      2: string etag;
      3: i32 refreshTimeSec;
      4: list<Module> recommendedModules;
}

service _backing_thrift_info_src4_g_a_t1_v{
    GetModulesResponse getModules(
        1 : GetModulesRequest request
    )throws(1: WalletException e);

    GetSmartChannelRecommendationsResponse getSmartChannelRecommendations(
        1 : GetSmartChannelRecommendationsRequest request
    )throws(1: WalletException e);

    GetBalanceSummaryResponseV2 getBalanceSummaryV2(
        1 : GetBalanceSummaryRequestV2 request
    )throws(1: WalletException e);

    GetBalanceSummaryResponse getBalanceSummary(
        1 : GetBalanceSummaryRequest request
    )throws(1: WalletException e);

    GetModuleResponse getModule(
        1 : GetModuleRequest request
    )throws(1: WalletException e);

    GetModulesResponseV2 getModulesV2(
        1 : GetModulesRequestV2 request
    )throws(1: WalletException e);

}


