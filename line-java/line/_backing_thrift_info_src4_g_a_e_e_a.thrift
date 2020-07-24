include "h0_a_a_c_a_a.thrift"


service _backing_thrift_info_src4_g_a_e_e_a{
    LatestProductsByAuthorResponse getAuthorsLatestProducts(
        2 : LatestProductsByAuthorRequest latestProductsByAuthorRequest
    )throws(1: ShopException e);

    ProductValidationScheme getProductValidationScheme(
        2 : string shopId,
        3 : string productId,
        4 : i64 productVersion
    )throws(1: ShopException e);

    GetSubscriptionPlansResponse getSubscriptionPlans(
        2 : GetSubscriptionPlansRequest req
    )throws(1: ShopException e);

    GetSubscriptionStatusResponse getSubscriptionStatus(
        2 : GetSubscriptionStatusRequest req
    )throws(1: ShopException e);

    GetRecommendOaResponse getRecommendOa(
        2 : GetRecommendOaRequest req
    )throws(1: ShopException e);

    GetSuggestResourcesV2Response getSuggestResourcesV2(
        2 : GetSuggestResourcesV2Request req
    )throws(1: ShopException e);

    AddProductToSubscriptionSlotResponse addProductToSubscriptionSlot(
        2 : AddProductToSubscriptionSlotRequest req
    )throws(1: ShopException e);

    PurchaseRecordList getSentPresents(
        2 : string shopId,
        3 : i32 offset,
        4 : i32 limit,
        5 : Locale locale
    )throws(1: ShopException e);

    PurchaseSubscriptionResponse purchaseSubscription(
        2 : PurchaseSubscriptionRequest req
    )throws(1: ShopException e);

    SaveStudentInformationResponse saveStudentInformation(
        2 : SaveStudentInformationRequest req
    )throws(1: ShopException e);

    ShopUpdates getUpdates(
        2 : string shopId,
        3 : Locale locale
    )throws(1: ShopException e);

    void notifyProductEvent(
        2 : string shopId,
        3 : string productId,
        4 : i64 productVersion,
        5 : i64 productEvent
    )throws(1: ShopException e);

    void canReceivePresent(
        2 : string shopId,
        3 : string productId,
        4 : Locale locale,
        5 : string recipientMid
    )throws(1: ShopException e);

    FindRestorablePlanResponse findRestorablePlan(
        2 : FindRestorablePlanRequest req
    )throws(1: ShopException e);

    ProductDetail getProductByVersion(
        2 : string shopId,
        3 : string productId,
        4 : i64 productVersion,
        5 : Locale locale
    )throws(1: ShopException e);

    ProductList getRecommendationForUser(
        2 : string shopId,
        3 : i32 offset,
        4 : i32 limit,
        5 : Locale locale
    )throws(1: ShopException e);

    ProductDetail getProduct(
        2 : string shopId,
        3 : string productId,
        4 : Locale locale
    )throws(1: ShopException e);

    void buyMustbuyProduct(
        2 : BuyMustbuyRequest request
    )throws(1: ShopException e);

    PurchaseOrderResponse placePurchaseOrderForFreeProduct(
        2 : PurchaseOrder purchaseOrder
    )throws(1: ShopException e);

    GetStudentInformationResponse getStudentInformation(
        2 : GetStudentInformationRequest req
    )throws(1: ShopException e);

    PurchaseRecordList getPurchasedProducts(
        2 : string shopId,
        3 : i32 offset,
        4 : i32 limit,
        5 : Locale locale
    )throws(1: ShopException e);

    RemoveProductFromSubscriptionSlotResponse removeProductFromSubscriptionSlot(
        2 : RemoveProductFromSubscriptionSlotRequest req
    )throws(1: ShopException e);

    GetSuggestDictionarySettingResponse getSuggestDictionarySetting(
        2 : GetSuggestDictionarySettingRequest req
    )throws(1: ShopException e);

    GetRecommendationResponse getRecommendationList(
        2 : GetRecommendationRequest getRecommendationRequest
    )throws(1: ShopException e);

    GetResourceFileReponse getResourceFile(
        2 : GetResourceFileRequest req
    )throws(1: ShopException e);

    ProductList getProductsByAuthor(
        2 : ProductListByAuthorRequest productListByAuthorRequest
    )throws(1: ShopException e);

    ProductValidationResult validateProduct(
        2 : string shopId,
        3 : string productId,
        4 : i64 productVersion,
        5 : ProductValidationRequest validationReq
    )throws(1: ShopException e);

    EstablishE2EESessionResponse establishE2EESession(
        1 : EstablishE2EESessionRequest request
    )throws(1: ShopException e);

    GetProductResponse getProductV2(
        2 : GetProductRequest request
    )throws(1: ShopException e);

    AutoSuggestionShowcaseResponse getAutoSuggestionShowcase(
        2 : AutoSuggestionShowcaseRequest autoSuggestionShowcaseRequest
    )throws(1: ShopException e);

    GetBrowsingHistoryResponse getBrowsingHistory(
        2 : GetBrowsingHistoryRequest getBrowsingHistoryRequest
    )throws(1: ShopException e);

    DynamicHomeNativeResponse getDynamicHomeNative(
        2 : DynamicHomeNativeRequest req
    )throws(1: ShopException e);

    ChangeSubscriptionResponse changeSubscription(
        2 : ChangeSubscriptionRequest req
    )throws(1: ShopException e);

    GetOldSticonMappingResponse getOldSticonMapping(
        2 : GetOldSticonMappingRequest req
    )throws(1: ShopException e);

    ShowcaseV3 getShowcaseV3(
        1 : ShowcaseRequest showcaseRequest
    )throws(1: ShopException e);

    GetProductSummariesInSubscriptionSlotsResponse getProductSummariesInSubscriptionSlots(
        2 : GetProductSummariesInSubscriptionSlotsRequest req
    )throws(1: ShopException e);

    CustomizeImageTextResponse setCustomizedImageText(
        2 : CustomizeImageTextRequest req
    )throws(1: ShopException e);

    PurchaseOrderResponse placePurchaseOrderWithLineCoin(
        2 : PurchaseOrder purchaseOrder
    )throws(1: ShopException e);

    CustomizeImageTextResponse previewCustomizedImageText(
        2 : CustomizeImageTextRequest req
    )throws(1: ShopException e);

    ProductSummaryList getOwnedProductSummaries(
        2 : string shopId,
        3 : i32 offset,
        4 : i32 limit,
        5 : Locale locale
    )throws(1: ShopException e);

    DetailedProductList getOwnedProducts(
        2 : string shopId,
        3 : i32 offset,
        4 : i32 limit,
        5 : Locale locale
    )throws(1: ShopException e);

    PurchaseRecordList getReceivedPresents(
        2 : string shopId,
        3 : i32 offset,
        4 : i32 limit,
        5 : Locale locale
    )throws(1: ShopException e);

}


