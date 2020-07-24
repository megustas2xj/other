

struct LiffAdvertisingId{
      1: optional string advertisingId;
      2: optional bool tracking;
}

struct LiffChatContext{
      1: string chatMid;
}

struct LiffContext{
      1: LiffNoneContext none;
      2: LiffChatContext chat;
      3: LiffSquareChatContext squareChat;
}

struct LiffDeviceSetting{
      1: optional bool videoAutoPlayAllowed;
      2: optional LiffAdvertisingId advertisingId;
}

struct LiffErrorConsentRequired{
      1: string channelId;
      2: string consentUrl;
}

struct LiffErrorPayload{
      3: LiffErrorConsentRequired consentRequired;
}

struct LiffException{
      1: i32 code;
      2: string message;
      3: optional LiffErrorPayload payload;
}

struct LiffNoneContext{
}

struct LiffSquareChatContext{
      1: string squareChatMid;
}

struct LiffView{
      8: optional i32 titleButtonColor;
      5: optional i32 titleBackgroundColor;
      9: optional i32 progressBarColor;
     10: optional i32 progressBackgroundColor;
     12: optional bool suspendable;
     16: optional bool suspendableV2;
     13: optional bool maxBrightness;
     14: optional i32 titleButtonAreaBackgroundColor;
     15: optional i32 titleButtonAreaBorderColor;
     17: optional i32 menuStyle;
     18: optional bool moduleMode;
     19: optional i32 pinToHomeServiceId;
      1: string type;
      2: string url;
     11: bool trustedDomain;
      6: optional string titleIconUrl;
      4: optional i32 titleTextColor;
      7: optional i32 titleSubtextColor;
}

struct LiffViewRequest{
      1: string liffId;
      3: string lang;
      2: LiffContext context;
      4: optional LiffDeviceSetting deviceSetting;
}

struct LiffViewResponse{
      1: LiffView view;
      2: optional string contextToken;
      3: optional string accessToken;
      4: optional string featureToken;
      5: optional list<i32> features;
      6: string channelId;
      7: optional string idToken;
      8: optional list<string> scopes;
      9: optional list<i32> launchOptions;
}

struct RevokeTokenRequest{
      1: optional string accessToken;
}

service g_a_i_t0_a{
    LiffViewResponse issueLiffView(
        1 : LiffViewRequest request
    )throws(1: LiffException e);

    void revokeToken(
        1 : RevokeTokenRequest request
    )throws(1: LiffException e);

}

