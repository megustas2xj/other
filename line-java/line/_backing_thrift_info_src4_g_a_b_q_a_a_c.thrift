include "g_a_b_q_a_a_c.thrift"
include "g_a_b_q_a_a.thrift"


struct GetSquareBotRequest{
      1: string botMid;
}

struct GetSquareBotResponse{
      1: SquareBot squareBot;
}

struct SquareBot{
      1: string botMid;
      2: bool active;
      3: string displayName;
      4: string profileImageObsHash;
      5: i32 iconType;
      6: i64 lastModifiedAt;
      7: i64 expiredIn;
}

service _backing_thrift_info_src4_g_a_b_q_a_a_c{
    GetSquareBotResponse getSquareBot(
        1 : GetSquareBotRequest req
    )throws(1: BotException e);

}


