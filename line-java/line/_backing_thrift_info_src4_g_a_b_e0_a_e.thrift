include "com_linecorp_square_protocol_thrift_common.thrift"
include "g_a_b_e0_a_e.thrift"
include "h0_a_e_a_b.thrift"
include "jp_naver_line_shop_protocol_thrift.thrift"


struct AddFriendData{
      1: string mid;
}

struct YellowpageItem{
     12: i32 categoryIcon;
     13: list<AdditionalInfoItem> additionalInfo;
      1: string id;
      2: string mid;
      3: string name;
      4: string address;
      5: double latitude;
      6: double longitude;
      7: double distance;
      8: bool canFreeCall;
      9: i32 countryCode;
     10: string phoneNumber;
     11: i32 categoryId;
}

struct AdditionalInfoItem{
      1: string id;
      2: i32 type;
      3: string title;
      4: string descr;
      5: string iconUrl;
      6: string link;
}

struct AutocompleteCandidate{
      1: string candidate;
}

struct AutocompleteRequest{
      1: string query;
      2: string region;
      3: i32 source;
      4: string sid;
}

struct AutocompleteResult{
      1: list<string> modifiedQueries;
      2: list<AutocompleteCandidate> candidates;
}

struct ButtonActionData{
      1: optional AddFriendData addFriendData;
      2: optional InstallAppData installAppData;
      3: optional JumpUrlData jumpUrlData;
}

struct CategoryItem{
      1: i32 collection;
      2: i32 categoryId;
      3: string name;
}

struct GeoAddressItem{
      1: double latitude;
      2: double longitude;
      3: string displayAddress;
}

struct InstallAppData{
      1: map<string,string> installData;
}

struct JumpUrlData{
}

struct KeywordInfo{
      1: string keyword;
      2: string iconPath;
      3: string label;
      4: bool locationInfoAgreement;
}

struct Notice{
      1: i32 type;
      2: string notice;
      3: i32 startTime;
      4: i32 endTime;
}

struct PortalSearchCollection{
      1: string name;
}

struct PortalSearchSummary{
      1: string link;
      2: list<PortalSearchCollection> collections;
}

struct SearchCommonParameter{
      1: double latitude;
      2: double longitude;
      3: string source;
      4: string region;
      5: optional string sid;
      6: i32 queryType;
      7: optional UserEvent userEvent;
}

struct SearchException{
/*
enum g.a.b.e0.a.e.q.class {
}
*/
      1: i32 code;
      2: string reason;
      3: optional map<string,string> extra;
}

struct SearchItemUnion{
      1: optional CategoryItem categoryItem;
      2: optional SpotItem spotItem;
      3: optional ProductSearchSummary productItem;
      4: optional ServiceItem serviceItem;
      5: optional YellowpageItem yellowpageItem;
      6: optional BuddySearchResult oaItem;
      7: optional GeoAddressItem geoAddressItem;
      8: optional ShortcutItem shortcutItem;
      9: optional SquareInfo squareItem;
     10: optional Category squareCategoryItem;
     11: optional PortalSearchSummary portalSearchSummary;
}

struct SearchPagingParameter{
      1: i32 collection;
      2: i32 start;
      3: i32 length;
      4: SearchCommonParameter commonParam;
}

struct SearchResult{
      1: string sid;
      2: list<SearchResultCollection> collections;
      3: i32 start;
      4: i32 length;
}

struct SearchResultCollection{
      1: i32 collection;
      2: string title;
      3: i32 rank;
      4: i32 hits;
      5: list<SearchResultItem> items;
      6: bool hasNext;
      7: optional list<i32> categoryId;
      8: optional string error;
      9: string tabTitle;
     10: i32 start;
     11: i32 length;
     12: optional i32 squareCategoryId;
}

struct ServiceItem{
      1: string id;
      2: string title;
      3: i32 type;
      4: i32 subType;
      5: string appId;
      6: string channelId;
      7: string badge;
      8: string iconUrl;
      9: string downloadUrl;
     10: string launchScheme;
     11: bool iconTint;
}

struct SearchResultItem{
      1: string id;
      2: i32 type;
      3: SearchItemUnion item;
      4: optional string title;
      5: optional string sub1;
      6: optional string sub2;
      7: optional string iconUrl;
      8: optional string titleLink;
      9: optional string iconLink;
     10: optional string displayTemplate;
     11: optional list<AdditionalInfoItem> additionalInfo;
}

struct ShortcutButton{
      1: string id;
      2: optional string title;
      3: string url;
      4: optional string iconPath;
      5: optional ShortcutButtonAction action;
}

struct SearchSection{
      1: i32 type;
      2: string title;
      3: list<KeywordInfo> keywordInfos;
}

struct ShortcutButtonAction{
      1: i32 actionType;
      2: ButtonActionData actionData;
}

struct ShortcutItem{
      1: string id;
      2: string title;
      3: string descr;
      4: string iconPath;
      5: string url;
      6: list<ShortcutButton> buttons;
      7: optional ShortcutButtonAction action;
}

struct UserEvent{
      1: bool endOfInput;
      2: string showPortalSearchBtn;
}

service _backing_thrift_info_src4_g_a_b_e0_a_e{
    SearchResult searchAll(
        1 : string query,
        2 : SearchCommonParameter param,
        3 : i32 currentCollection
    )throws(1: SearchException e);

    SearchResult searchCollection(
        1 : string query,
        2 : SearchPagingParameter param
    )throws(1: SearchException e);

    AutocompleteResult getAutocomplete(
        1 : AutocompleteRequest request
    )throws(1: SearchException e);

    map<i32,list<Notice>> getNotice(
        1 : set<i32> noticeTypes,
        2 : string region
    )throws(1: SearchException e);

    map<i32,SearchSection> getSearchSection(
        1 : set<i32> searchSectionTypes,
        2 : string region
    )throws(1: SearchException e);

}


