include "jp_naver_line_shop_protocol_thrift.thrift"


struct AddProductToSubscriptionSlotRequest{
      1: i32 productType;
      2: string productId;
      3: optional string oldProductId;
      4: optional i32 subscriptionService;
}

struct GetBrowsingHistoryResponse{
      1: list<BrowsingHistory> browsingHistory;
      2: string continuationToken;
      3: i32 totalSize;
}

struct ImageTextRequestEntry{
      1: string text;
}

struct ProductWishProperty{
      1: i64 totalCount;
}

struct StickerIdRange{
      1: i64 start;
      2: i32 size;
}

struct AddProductToSubscriptionSlotResponse{
      1: i32 result;
}

struct GetOldSticonMappingRequest{
      1: i64 lastUpdatedTimeMillis;
}

struct PromotionBuddyInfo{
      1: string buddyMid;
}

struct StickerProperty{
      1: bool hasAnimation;
      2: bool hasSound;
      3: bool hasPopup;
      4: i32 stickerResourceType;
      5: string stickerOptions;
      6: i32 compactStickerOptions;
      7: string stickerHash;
      9: list<string> stickerIds;
     10: optional ImageTextProperty nameTextProperty;
     11: optional bool availableForPhotoEdit;
     12: optional map<string,string> stickerDefaultTexts;
     13: optional i32 stickerSize;
}

struct AggregatedCategory{
      1: i64 id;
      2: i32 categoryType;
      3: string name;
      4: i32 productCount;
      5: string thumbnailUrl;
}

struct GetOldSticonMappingResponse{
      1: list<SticonProductMapping> sticonProductMappings;
      2: i64 updatedTimeMillis;
      3: bool updated;
}

struct LatestProductByAuthorItem{
      1: string productId;
      2: string displayName;
      3: i64 version;
      4: bool newFlag;
      5: ProductResourceType productResourceType;
}

struct PromotionDetail{
      1: PromotionBuddyInfo promotionBuddyInfo;
      2: PromotionInstallInfo promotionInstallInfo;
      3: PromotionMissionInfo promotionMissionInfo;
}

struct ApplicationVersionRange{
      1: string lowerBound;
      2: bool lowerBoundInclusive;
      3: string upperBound;
      4: bool upperBoundInclusive;
}

struct GetProductRequest{
      1: i32 productType;
      2: string productId;
      3: optional string carrierCode;
      4: optional bool saveBrowsingHistory;
}

struct LatestProductsByAuthorRequest{
      1: i32 productType;
      2: i64 authorId;
      3: i32 limit;
}

struct PromotionInfo{
      1: i32 promotionType;
     51: PromotionBuddyInfo buddyInfo;
      2: PromotionDetail promotionDetail;
}

struct AutoSuggestionShowcaseRequest{
      1: i32 productType;
      2: optional i32 suggestionType;
}

struct GetProductResponse{
      1: ProductDetail productDetail;
}

struct LatestProductsByAuthorResponse{
      1: i64 authorId;
      2: string author;
      3: list<LatestProductByAuthorItem> items;
}

struct PromotionInstallInfo{
      1: string downloadUrl;
      2: string customUrlSchema;
}

struct StickerSummary{
      1: list<StickerIdRange> stickerIdRanges;
      2: optional i64 suggestVersion;
      3: string stickerHash;
      4: optional bool defaultDisplayOnKeyboard;
      5: i32 stickerResourceType;
      6: optional ImageTextProperty nameTextProperty;
      7: optional bool availableForPhotoEdit;
}

struct AutoSuggestionShowcaseResponse{
      1: list<ProductSummaryForAutoSuggest> productList;
      2: i64 totalSize;
}

struct GetProductSummariesInSubscriptionSlotsRequest{
      1: i32 productType;
      2: optional string continuationToken;
      3: optional i32 limit;
}

struct ListContent{
      1: ListContentData contentData;
      2: optional string localizedTitle;
      3: optional string tsKey;
      4: optional string moreLinkFragment;
}

struct PromotionMissionInfo{
      1: i32 promotionMissionType;
      2: bool missionCompleted;
      3: string downloadUrl;
      4: string customUrlSchema;
}

struct SticonProductMapping{
      1: string productId;
      2: string oldProductId;
      3: map<string,string> newToOldSticonIdMapping;
      4: i32 oldPackageVersion;
      5: i32 oldMetaVersion;
      6: i64 stickerPackageId;
      7: i32 stickerPackageVersion;
      8: map<string,string> stickerIds;
}

struct BrowsingHistory{
      1: ProductSearchSummary productSearchSummary;
      2: i64 browsingTime;
}

struct GetProductSummariesInSubscriptionSlotsResponse{
      1: list<ProductSummary> products;
      2: string continuationToken;
      3: i64 totalSize;
      4: i32 maxSlotCount;
}

struct ListContentData{
      1: optional ShowcaseV3 showcase;
      2: optional list<EditorsPickBanner> editorsPickBanners;
      3: optional list<AggregatedCategory> categories;
}

struct SticonProperty{
      2: list<string> sticonIds;
      3: optional bool availableForPhotoEdit;
      4: optional i32 sticonResourceType;
}

struct BuyMustbuyRequest{
      1: i32 productType;
      2: string productId;
      3: string serialNumber;
}

struct GetRecommendOaRequest{
      1: i32 productType;
      2: string productId;
}

struct Locale{
      1: string language;
      2: string country;
}

struct GetRecommendOaResponse{
      1: list<string> buddyMids;
}

struct LpPromotionProperty{
      1: string landingPageUrl;
      2: string label;
}

struct PurchaseOrder{
      1: string shopId;
      2: string productId;
      5: string recipientMid;
     11: Price price;
     12: bool enableLinePointAutoExchange;
     21: Locale locale;
     31: map<string,string> presentAttributes;
}

struct SticonSummary{
      1: optional i64 suggestVersion;
      2: optional bool availableForPhotoEdit;
}

struct ChangeSubscriptionRequest{
      1: string billingItemId;
      2: i32 subscriptionService;
      3: i32 storeCode;
}

struct GetRecommendationRequest{
      1: string continuationToken;
      2: i32 limit;
      3: i32 productType;
      4: i32 recommendationType;
      5: optional string productId;
      6: optional set<i32> subtypes;
      7: bool shouldShuffle;
      8: optional bool includeStickerIds;
      9: optional ShopFilter shopFilter;
}

struct Price{
      1: string currency;
      2: string amount;
      3: string priceString;
}

struct PurchaseOrderResponse{
      1: string orderId;
     11: map<string,string> attributes;
     12: string billingConfirmUrl;
}

struct ChangeSubscriptionResponse{
      1: i32 result;
      2: string orderId;
      3: string confirmUrl;
}

struct GetRecommendationResponse{
      1: optional list<ProductSearchSummary> results;
      2: string continuationToken;
      3: i64 totalSize;
}

struct PurchaseRecord{
      1: ProductDetail productDetail;
     11: i64 purchasedTime;
     21: string giver;
     22: string recipient;
     31: Price purchasedPrice;
}

struct StudentInformation{
      1: string schoolName;
      2: string graduationDate;
}

struct CustomizeImageTextRequest{
      1: i32 productType;
      2: string productId;
      3: ImageTextRequestEntry nameRequestEntry;
}

struct GetResourceFileReponse{
      1: optional GetTagClusterFileResponse tagClusterFileResponse;
}

struct ProductDetail{
     93: string authorId;
     94: i32 stickerResourceType;
     95: ProductProperty productProperty;
     96: i32 productSalesState;
     97: i64 installedTime;
    101: optional ProductWishProperty wishProperty;
    102: ProductSubscriptionProperty subscriptionProperty;
    103: optional ProductPromotionProperty productPromotionProperty;
      1: string id;
      2: string billingItemId;
      5: string billingCpId;
      3: string type;
      4: i32 subtype;
     11: string name;
     12: string author;
     13: string details;
     14: string copyright;
     15: string notice;
     16: PromotionInfo promotionInfo;
     21: i64 latestVersion;
     22: string latestVersionString;
     23: i64 version;
     24: string versionString;
     25: ApplicationVersionRange applicationVersionRange;
     31: bool owned;
     32: bool grantedByDefault;
     41: i32 validFor;
     42: i64 validUntil;
     51: bool onSale;
     52: set<string> salesFlags;
     53: bool availableForPresent;
     54: bool availableForMyself;
     61: i32 priceTier;
     62: Price price;
     63: string priceInLineCoin;
     64: Price localizedPrice;
     91: map<string,list<string>> images;
     92: map<string,string> attributes;
}

struct PurchaseRecordList{
      1: list<PurchaseRecord> purchaseRecords;
      2: i32 offset;
      3: i32 totalSize;
}

struct CustomizeImageTextResponse{
      1: ImageTextProperty nameTextProperty;
}

struct GetResourceFileRequest{
      1: optional GetTagClusterFileRequest tagClusterFileRequest;
}

struct ProductList{
      1: list<ProductDetail> productList;
      2: i32 offset;
      3: i32 totalSize;
     11: string title;
}

struct PurchaseSubscriptionRequest{
      1: string billingItemId;
      2: i32 subscriptionService;
      3: i32 storeCode;
      4: optional string storeOrderId;
}

struct SubscriptionPlan{
      1: string billingItemId;
      2: i32 subscriptionService;
      3: i32 target;
      4: i32 type;
      5: string period;
      6: string freeTrial;
      7: string localizedName;
      8: Price price;
      9: i32 availability;
     10: string cpId;
     11: string nameKey;
}

struct GetStudentInformationRequest{
}

struct ProductListByAuthorRequest{
      1: i32 productType;
      2: string authorId;
      3: i32 offset;
      4: i32 limit;
      5: optional ShopFilter shopFilter;
}

struct PurchaseSubscriptionResponse{
      1: i32 result;
      2: string orderId;
      3: string confirmUrl;
}

struct GetStudentInformationResponse{
      1: StudentInformation studentInformation;
      2: bool isValid;
}

struct ProductPromotionProperty{
      1: LpPromotionProperty lpPromotionProperty;
}

struct DemographicType{
      1: i32 demographicGenderType;
      2: i32 demographicAgeType;
}

struct GetSubscriptionPlansRequest{
      1: i32 subscriptionService;
      2: i32 storeCode;
}

struct ProductResourceType{
      1: optional i32 stickerResourceType;
      2: optional i32 themeResourceType;
      3: optional i32 sticonResourceType;
}

struct RemoveProductFromSubscriptionSlotRequest{
      1: i32 productType;
      2: string productId;
      3: optional i32 subscriptionService;
}

struct DetailedProductList{
      1: list<ProductDetail> productList;
      2: i32 offset;
      3: i32 totalSize;
}

struct GetSubscriptionPlansResponse{
      1: list<SubscriptionPlan> plans;
}

struct RemoveProductFromSubscriptionSlotResponse{
      1: i32 result;
}

struct DynamicHomeNativeRequest{
      1: i32 productType;
}

struct GetSubscriptionStatusRequest{
}

struct ProductSubscriptionProperty{
      1: bool availableForSubscribe;
      2: i32 subscriptionAvailability;
}

struct SaveStudentInformationRequest{
      1: StudentInformation studentInformation;
}

struct DynamicHomeNativeResponse{
      1: list<ListContent> listContents;
}

struct GetSubscriptionStatusResponse{
      1: map<i32,SubscriptionStatus> subscriptions;
      2: bool hasValidStudentInformation;
}

struct ProductSummary{
      1: string id;
     11: string name;
     21: i64 latestVersion;
     25: ApplicationVersionRange applicationVersionRange;
     32: bool grantedByDefault;
     92: map<string,string> attributes;
     93: ProductTypeSummary productTypeSummary;
     94: i64 validUntil;
     95: i32 validFor;
     96: i64 installedTime;
     97: i32 availability;
     98: string authorId;
}

struct SaveStudentInformationResponse{
}

struct SubscriptionStatus{
      1: string billingItemId;
      2: i32 subscriptionService;
      3: string period;
      4: string localizedName;
      5: bool freeTrial;
      6: bool expired;
      7: i64 validUntil;
      8: i32 stickerSlotCount;
      9: i32 target;
     10: i32 type;
     11: i32 storeCode;
     12: string nameKey;
}

struct EditorsPickBanner{
      1: i64 id;
      2: string imageUrl;
      3: string homeBannerImageUrl;
      4: string showcaseBannerImageUrl;
      5: list<i32> enableEditorsPickShowcaseTypes;
      6: i32 defaulteditorsPickShowcaseType;
      7: string homeBannerV2ImageUrl;
      8: string name;
      9: bool containsProducts;
     10: i64 displayPeriodBegin;
     11: string description;
     12: bool showNewBadge;
}

struct GetSuggestDictionarySettingRequest{
}

struct ProductSummaryForAutoSuggest{
      1: string id;
      2: i64 version;
      3: string name;
      4: i32 stickerResourceType;
      5: i64 suggestVersion;
}

struct GetSuggestDictionarySettingResponse{
      1: list<SuggestDictionarySetting> results;
}

struct ProductSummaryList{
      1: list<ProductSummary> productList;
      2: i32 offset;
      3: i32 totalSize;
}

struct ShopException{
      1: i32 code;
      2: string reason;
      3: map<string,string> parameterMap;
}

struct SuggestDictionarySetting{
      1: string language;
      2: string name;
      3: optional bool preload;
      4: SuggestResource suggestResource;
      5: optional map<i64,i64> patch;
      6: SuggestResource suggestTagResource;
      7: optional map<i64,i64> tagPatch;
}

struct EstablishE2EESessionRequest{
      1: string clientPublicKey;
}

struct GetSuggestResourcesV2Request{
      1: i32 productType;
      2: list<string> productIds;
}

struct ShopFilter{
      1: optional set<i32> productAvailabilities;
      2: optional set<i32> stickerSizes;
}

struct SuggestResource{
      1: string dataUrl;
      2: i64 version;
      3: i64 updatedTime;
}

struct EstablishE2EESessionResponse{
      1: string sessionId;
      2: string serverPublicKey;
      3: i64 expireAt;
}

struct GetSuggestResourcesV2Response{
      1: map<string,SuggestResource> suggestResources;
}

struct ProductTypeSummary{
      1: optional StickerSummary stickerSummary;
      2: optional ThemeSummary themeSummary;
      3: optional SticonSummary sticonSummary;
}

struct ShopUpdates{
      1: string shopId;
     11: i64 latestUpdateTime;
}

struct FindRestorablePlanRequest{
      1: i32 subscriptionService;
      2: list<string> storeOrderIds;
}

struct GetTagClusterFileRequest{
}

struct ProductValidationRequest{
      1: ProductValidationScheme validationScheme;
     10: string authCode;
}

struct ShowcaseRequest{
      1: i32 productType;
      2: i32 showcaseType;
      3: i32 subType;
      4: string continuationToken;
      5: i32 limit;
      6: optional set<ProductResourceType> productResourceTypes;
      7: optional DemographicType demographicType;
}

struct ThemeProperty{
      1: string thumbnailUrl;
      2: i32 themeResourceType;
}

struct FindRestorablePlanResponse{
      1: i32 result;
      2: string billingItemId;
      3: string storeOrderId;
      4: string originalStoreOrderId;
      5: string orderId;
      6: string mid;
}

struct GetTagClusterFileResponse{
      1: string path;
      2: i64 updatedTimeMillis;
}

struct ProductValidationResult{
      1: bool validated;
}

struct GetBrowsingHistoryRequest{
      1: set<i32> productTypes;
      2: optional string continuationToken;
      3: optional i32 limit;
      4: optional ShopFilter shopFilter;
}

struct ImageTextProperty{
      1: i32 status;
      2: optional string plainText;
      3: optional i32 nameTextMaxCharacterCount;
      4: optional string encryptedText;
}

struct ProductValidationScheme{
     10: string key;
     11: i64 offset;
     12: i64 size;
}

struct ShowcaseV3{
      1: list<ProductSearchSummary> productList;
      2: optional string continuationToken;
      3: i64 totalSize;
      4: optional i32 showcaseType;
      5: optional i32 productType;
      6: optional i32 subType;
      7: optional DemographicType demographicType;
}

struct ThemeSummary{
}

service h0_a_a_c_a_a{
}

