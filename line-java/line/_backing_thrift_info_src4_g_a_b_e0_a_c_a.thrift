include "g_a_b_e0_a_c_a.thrift"


struct CancelPinCodeRequest{
      1: string authSessionId;
}

struct CancelPinCodeResponse{
}

struct GetLoginActorContextRequest{
      1: string authSessionId;
}

struct GetLoginActorContextResponse{
      1: string appType;
      2: string accessLocation;
}

struct SecondaryQrCodeException{
/*
enum g.a.b.e0.a.c.a.c.class {
}
*/
      1: i32 code;
      2: string alertMessage;
}

struct VerifyPinCodeRequest{
      1: string authSessionId;
      2: string pinCode;
}

struct VerifyPinCodeResponse{
}

struct VerifyQrCodeRequest{
      1: string authSessionId;
      2: map<string,string> metaData;
}

struct VerifyQrCodeResponse{
}

service _backing_thrift_info_src4_g_a_b_e0_a_c_a{
    VerifyPinCodeResponse verifyPinCode(
        1 : VerifyPinCodeRequest request
    )throws(1: SecondaryQrCodeException e);

    VerifyQrCodeResponse verifyQrCode(
        1 : VerifyQrCodeRequest request
    )throws(1: SecondaryQrCodeException e);

    CancelPinCodeResponse cancelPinCode(
        1 : CancelPinCodeRequest request
    )throws(1: SecondaryQrCodeException e);

    GetLoginActorContextResponse getLoginActorContext(
        1 : GetLoginActorContextRequest request
    )throws(1: SecondaryQrCodeException e);

}


