

struct BeaconBackgroundNotification{
      1: i64 actionInterval;
      2: optional list<BeaconCondition> actionAndConditions;
      3: i64 actionDelay;
      4: optional list<list<BeaconCondition>> actionConditions;
}

struct BeaconCondition{
      1: string inFriends;
      2: string notInFriends;
      3: bool termsAgreed;
}

struct BeaconLayerInfoAndActions{
      1: string pictureUrl;
      2: string label;
      3: string text;
      4: list<string> actions;
      5: optional list<BeaconCondition> showOrConditions;
      6: optional list<list<BeaconCondition>> showConditions;
      7: i64 timeToHide;
}

struct BeaconQueryResponse{
     10: string minor;
     11: double effectiveRange;
     12: optional list<string> channelWhiteList;
     13: i64 actionId;
     14: optional i64 stayReportInterval;
     15: i64 leaveThresholdTime;
     17: double touchThreshold;
     18: i16 cutoffThreshold;
      2: list<string> deprecated_actionUrls;
      3: i64 cacheTtl;
      4: optional BeaconTouchActions touchActions;
      5: optional BeaconLayerInfoAndActions layerInfoAndActions;
      6: optional BeaconBackgroundNotification backgroundEnteringNotification;
      7: optional BeaconBackgroundNotification backgroundLeavingNotification;
      8: string group;
      9: string major;
}

struct BeaconTouchActions{
      1: list<string> actions;
}

struct Rssi{
      1: i32 value;
}

struct TalkException{
      1: i32 code;
      2: string reason;
      3: map<string,string> parameterMap;
}

service g_a_b_p_a_a_a_a{
    void notifyBannerShowing(
        1 : string hwid,
        2 : string secureMessage,
        3 : i32 applicationType,
        4 : string applicationVersion,
        5 : string userSessionId,
        6 : i64 actionId,
        7 : string screen,
        8 : i64 bannerStartedAt,
        9 : i64 bannerShownFor
    )throws(1: TalkException e);

    void notifyBannerTapped(
        1 : string hwid,
        2 : string secureMessage,
        3 : i32 applicationType,
        4 : string applicationVersion,
        5 : string userSessionId,
        6 : i64 actionId,
        7 : string screen,
        8 : i64 bannerTappedAt,
        9 : bool beaconTermAgreed
    )throws(1: TalkException e);

    BeaconQueryResponse queryBeaconActions(
        1 : string hwid,
        2 : string secureMessage,
        3 : i32 applicationType,
        4 : string applicationVersion,
        5 : string lang,
        6 : string region,
        7 : string modelName
    )throws(1: TalkException e);

    void notifyBeaconDetected(
        1 : string hwid,
        2 : string secureMessage,
        3 : i32 notificationType,
        4 : Rssi rssi
    )throws(1: TalkException e);

}

