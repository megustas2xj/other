include "g_a_n0_a_a_a_b.thrift"


struct GetHomeServiceListRequest{
}

struct GetHomeServiceListResponse{
      1: list<HomeService> services;
      2: list<i32> fixedServiceIds;
      3: list<i32> pinnedServiceCandidateIds;
      4: list<HomeCategory> categories;
}

struct HomeCategory{
      1: i32 id;
      2: string title;
      3: list<i32> ids;
}

struct HomeService{
      1: i32 id;
      2: string title;
      3: string serviceEntryUrl;
      4: optional string storeUrl;
      5: string iconUrl;
      6: optional string pictogramIconUrl;
      7: i64 badgeUpdatedTimeMillis;
      8: optional i32 badgeType;
}

service g_a_n0_a_a_a_a_a{
    GetHomeServiceListResponse getHomeServiceList(
        1 : GetHomeServiceListRequest request
    )throws(1: HomeException e);

}

