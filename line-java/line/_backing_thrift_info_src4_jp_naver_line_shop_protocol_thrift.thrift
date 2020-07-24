include "h0_a_a_c_a_a.thrift"
include "jp_naver_line_shop_protocol_thrift.thrift"


struct ProductProperty{
      1: optional StickerProperty stickerProperty;
      3: optional SticonProperty sticonProperty;
      2: optional ThemeProperty themeProperty;
}

struct ProductSearchSummary{
      4: string author;
     16: string authorId;
/*
enum h0.a.a.c.a.a.k1.class {
}
*/
     19: i32 availability;
     13: bool availableForPresent;
     14: bool availableForPurchase;
     17: bool bargainFlag;
     18: string copyright;
      1: string id;
     20: optional string interactionEventParameter;
      3: string name;
      7: bool newFlag;
     12: bool onSale;
      9: string priceInLineCoin;
      8: i32 priceTier;
      5: PromotionInfo promotionInfo;
     10: ProductProperty property;
/*
enum h0.a.a.c.a.a.t3.class {
}
*/
     11: i32 subType;
/*
enum h0.a.a.c.a.a.v1.class {
}
*/
      2: i32 type;
     15: i32 validDays;
      6: i64 version;
}

service _backing_thrift_info_src4_jp_naver_line_shop_protocol_thrift{
}


