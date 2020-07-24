include "g_a_b_e0_a_a_a_a.thrift"


struct AccountEapConnectException{
/*
enum g.a.b.e0.a.a.a.a.s.class {
}
*/
      1: i32 code;
      2: string alertMessage;
     11: optional WebAuthDetails webAuthDetails;
}

struct ConnectEapAccountRequest{
      1: string authSessionId;
}

struct ConnectEapAccountResponse{
}

struct Device{
      1: string udid;
      2: string deviceModel;
}

struct DisconnectEapAccountRequest{
/*
enum g.a.b.e0.a.a.a.a.r.class {
}
*/
      1: i32 eapType;
}

struct DisconnectEapAccountResponse{
}

struct EapLogin{
/*
enum g.a.b.e0.a.a.a.a.r.class {
}
*/
      1: i32 type;
      2: string accessToken;
}

struct OpenSessionRequest{
      1: Device device;
}

struct OpenSessionResponse{
      1: string authSessionId;
}

struct VerifyEapLoginRequest{
      1: string authSessionId;
      2: EapLogin eapLogin;
}

struct VerifyEapLoginResponse{
      1: bool accountExists;
}

struct WebAuthDetails{
      1: string baseUrl;
      2: string token;
}

service _backing_thrift_info_src4_g_a_b_e0_a_a_a_a{
    VerifyEapLoginResponse verifyEapLogin(
        1 : VerifyEapLoginRequest request
    )throws(1: AccountEapConnectException e);

    ConnectEapAccountResponse connectEapAccount(
        1 : ConnectEapAccountRequest request
    )throws(1: AccountEapConnectException e);

    DisconnectEapAccountResponse disconnectEapAccount(
        1 : DisconnectEapAccountRequest request
    )throws(1: AccountEapConnectException e);

    OpenSessionResponse openSession(
        1 : OpenSessionRequest request
    )throws(1: AccountEapConnectException e);

}


