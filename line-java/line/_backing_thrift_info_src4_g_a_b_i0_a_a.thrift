include "g_a_b_i0_a_a.thrift"


struct BinaryScenarioActionResult{
      1: string bytes;
}

struct ThingsDevice{
      1: string deviceId;
      2: string actionUri;
      3: optional string botMid;
/*
enum g.a.b.i0.a.a.q.class {
}
*/
      4: i32 productType;
      5: string providerName;
      6: string profileImageLocation;
      7: optional list<string> channelIdList;
      8: i16 targetABCEngineVersion;
      9: optional string serviceUuid;
     10: optional bool bondingRequired;
}

struct BleNotificationReceivedTrigger{
      1: string serviceUuid;
      2: string characteristicUuid;
}

struct UserDevice{
      1: ThingsDevice device;
      2: string deviceDisplayName;
}

struct BleProduct{
      1: string serviceUuid;
      2: string psdiServiceUuid;
      3: string psdiCharacteristicUuid;
      4: string name;
      5: string profileImageLocation;
      6: bool bondingRequired;
}

struct ThingsException{
/*
enum g.a.b.i0.a.a.b0.class {
}
*/
      1: i32 code;
      2: string reason;
}

struct VoidScenarioActionResult{
}

struct DeviceLinkRequest{
      1: string deviceId;
}

struct DeviceLinkResponse{
      1: i64 latestOffset;
}

struct DeviceUnlinkRequest{
      1: string deviceId;
}

struct DeviceUnlinkResponse{
}

struct DisconnectAction{
}

struct GattReadAction{
      1: string serviceUuid;
      2: string characteristicUuid;
}

struct GattWriteAction{
      1: string serviceUuid;
      2: string characteristicUuid;
      3: string data;
}

struct GetBleDeviceRequest{
      1: string serviceUuid;
      2: string psdi;
}

struct GetPredefinedScenarioSetsRequest{
      1: list<string> deviceIds;
}

struct GetPredefinedScenarioSetsResponse{
      1: map<string,ScenarioSet> scenarioSets;
}

struct ImmediateTrigger{
}

struct NotifyScenarioExecutedRequest{
      2: list<ScenarioResult> scenarioResults;
}

struct NotifyScenarioExecutedResponse{
}

struct Scenario{
      1: string id;
      2: ScenarioTrigger trigger;
      3: list<ScenarioAction> actions;
}

struct ScenarioAction{
      1: GattReadAction gattRead;
      2: GattWriteAction gattWrite;
      3: SleepAction sleep;
      4: DisconnectAction disconnect;
      5: StopNotificationAction stopNotification;
}

struct ScenarioActionResult{
      1: VoidScenarioActionResult voidResult;
      2: BinaryScenarioActionResult binaryResult;
}

struct ScenarioResult{
      1: string scenarioId;
      2: string deviceId;
      3: i64 revision;
      4: i64 startTime;
      5: i64 endTime;
/*
enum g.a.b.i0.a.a.v.class {
}
*/
      6: i32 code;
      7: optional string errorReason;
      8: optional string bleNotificationPayload;
      9: list<ScenarioActionResult> actionResults;
     10: string connectionId;
}

struct ScenarioSet{
      1: list<Scenario> scenarios;
      2: bool autoClose;
      3: i64 suppressionInterval;
      4: i64 revision;
      5: i64 modifiedTime;
}

struct ScenarioTrigger{
      1: ImmediateTrigger immediate;
      2: BleNotificationReceivedTrigger bleNotificationReceived;
}

struct SleepAction{
      1: i64 sleepMillis;
}

struct StopNotificationAction{
      1: string serviceUuid;
      2: string characteristicUuid;
}

service _backing_thrift_info_src4_g_a_b_i0_a_a{
    NotifyScenarioExecutedResponse notifyScenarioExecuted(
        1 : NotifyScenarioExecutedRequest request
    )throws(1: ThingsException e);

    DeviceUnlinkResponse unlinkDevice(
        1 : DeviceUnlinkRequest request
    )throws(1: ThingsException e);

    ThingsDevice getBleDevice(
        1 : GetBleDeviceRequest request
    )throws(1: ThingsException e);

    list<BleProduct> getBleProducts(
    )throws(1: ThingsException e);

    list<UserDevice> getLinkedDevices(
    )throws(1: ThingsException e);

    GetPredefinedScenarioSetsResponse getPredefinedScenarioSets(
        1 : GetPredefinedScenarioSetsRequest request
    )throws(1: ThingsException e);

    DeviceLinkResponse linkDevice(
        1 : DeviceLinkRequest request
    )throws(1: ThingsException e);

}


