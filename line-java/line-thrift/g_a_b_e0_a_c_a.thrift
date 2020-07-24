

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

service g_a_b_e0_a_c_a{
    CancelPinCodeResponse cancelPinCode(
        1 : CancelPinCodeRequest request
    )throws(1: SecondaryQrCodeException e);

    GetLoginActorContextResponse getLoginActorContext(
        1 : GetLoginActorContextRequest request
    )throws(1: SecondaryQrCodeException e);

    VerifyPinCodeResponse verifyPinCode(
        1 : VerifyPinCodeRequest request
    )throws(1: SecondaryQrCodeException e);

    VerifyQrCodeResponse verifyQrCode(
        1 : VerifyQrCodeRequest request
    )throws(1: SecondaryQrCodeException e);

}

