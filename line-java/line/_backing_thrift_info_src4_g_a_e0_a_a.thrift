include "g_a_e0_a_a.thrift"


struct Chatapp{
      1: string chatappId;
      2: string name;
      3: string icon;
      4: string url;
/*
enum g.a.e0.a.a.a.class {
}
*/
      5: list<i32> availableChatTypes;
}

struct ChatappException{
/*
enum g.a.e0.a.a.d.class {
}
*/
      1: i32 code;
      2: string reason;
}

struct GetChatappRequest{
      1: string chatappId;
      2: string language;
}

struct GetChatappResponse{
      1: Chatapp app;
}

struct GetMyChatappsRequest{
      1: string language;
      2: optional string continuationToken;
}

struct GetMyChatappsResponse{
      1: list<MyChatapp> apps;
      2: optional string continuationToken;
}

struct MyChatapp{
      1: Chatapp app;
/*
enum g.a.e0.a.a.c.class {
}
*/
      2: i32 category;
      3: optional i64 priority;
}

service _backing_thrift_info_src4_g_a_e0_a_a{
    GetChatappResponse getChatapp(
        1 : GetChatappRequest request
    )throws(1: ChatappException e);

    GetMyChatappsResponse getMyChatapps(
        1 : GetMyChatappsRequest request
    )throws(1: ChatappException e);

}


