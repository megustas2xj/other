include "g_a_b_e0_a_b.thrift"


struct AccountIdentifier{
/*
enum g.a.b.e0.a.b.b.class {
}
*/
      1: i32 type;
      2: string identifier;
     11: optional string countryCode;
}

struct AuthException{
/*
enum g.a.b.e0.a.b.h.class {
}
*/
      1: i32 code;
      2: string alertMessage;
     11: optional WebAuthDetails webAuthDetails;
}

struct Device{
      1: string udid;
      2: string deviceModel;
}

struct EncryptedPassword{
/*
enum g.a.b.e0.a.b.g.class {
}
*/
      1: i32 encryptionKeyVersion;
      2: string cipherText;
}

struct ExchangeEncryptionKeyRequest{
/*
enum g.a.b.e0.a.b.g.class {
}
*/
      1: i32 authKeyVersion;
      2: string publicKey;
      3: string nonce;
}

struct ExchangeEncryptionKeyResponse{
      1: string publicKey;
      2: string nonce;
}

struct GetAcctVerifMethodResponse{
/*
enum g.a.b.e0.a.b.c.class {
}
*/
      1: i32 availableMethod;
      2: bool sameAccountFromAuthFactor;
}

struct RegisterPrimaryResponse{
      1: string authToken;
}

struct GetCountryInfoResponse{
      1: string countryCode;
      2: bool countryInEEA;
      3: set<string> countrySetOfEEA;
}

struct GetPhoneVerifMethodResponse{
/*
enum g.a.b.e0.a.b.t.class {
}
*/
      1: list<i32> availableMethods;
      3: string prettifiedPhoneNumber;
}

struct SendPinCodeForPhoneResponse{
/*
enum g.a.b.e0.a.b.t.class {
}
*/
      1: list<i32> availableMethods;
}

struct GetSecondAuthMethodResponse{
/*
enum g.a.b.e0.a.b.l1.class {
}
*/
      1: i32 secondAuthMethod;
}

struct SetPasswordResponse{
}

struct GetUserProfileResponse{
      1: UserProfile userProfile;
}

struct SimCard{
      1: string countryCode;
      2: string hni;
      3: string carrierName;
}

struct IssueWebAuthDetailsForAcctVerifResponse{
      1: WebAuthDetails webAuthDetails;
}

struct SocialLogin{
/*
enum g.a.b.e0.a.b.q1.class {
}
*/
      1: i32 type;
      2: string accessToken;
      3: string countryCode;
}

struct IssueWebAuthDetailsForSecondAuthResponse{
      1: WebAuthDetails webAuthDetails;
}

struct MigratePrimaryResponse{
      1: string authToken;
}

struct UserPhoneNumber{
      1: string phoneNumber;
      2: string countryCode;
}

struct OpenSessionRequest{
      1: map<string,string> metaData;
}

struct UserProfile{
      1: string displayName;
      2: string profileImageUrl;
}

struct ValidateProfileResponse{
}

struct VerifyAccountUsingPwdResponse{
      2: UserProfile userProfile;
}

struct VerifyPhoneResponse{
      2: bool accountExist;
      3: bool sameUdidFromAccount;
     11: optional UserProfile userProfile;
}

struct VerifySocialLoginResponse{
      2: bool accountExist;
     11: optional UserProfile userProfile;
     12: bool sameUdidFromAccount;
}

struct WebAuthDetails{
      1: string baseUrl;
      2: string token;
}

service _backing_thrift_info_src4_g_a_b_e0_a_b{
    IssueWebAuthDetailsForSecondAuthResponse issueWebAuthDetailsForSecondAuth(
        1 : string authSessionId
    )throws(1: AuthException e);

    RegisterPrimaryResponse registerPrimaryUsingSocialLogin(
        2 : string authSessionId
    )throws(1: AuthException e);

    GetAcctVerifMethodResponse getAcctVerifMethod(
        1 : string authSessionId,
        2 : AccountIdentifier accountIdentifier
    )throws(1: AuthException e);

/*
enum g.a.b.e0.a.b.t.class {
}
*/
    SendPinCodeForPhoneResponse sendPinCodeForPhone(
        1 : string authSessionId,
        2 : Device device,
        3 : UserPhoneNumber userPhoneNumber,
        4 : i32 verifMethod
    )throws(1: AuthException e);

    GetPhoneVerifMethodResponse getPhoneVerifMethod(
        1 : string authSessionId,
        2 : Device device,
        3 : UserPhoneNumber userPhoneNumber
    )throws(1: AuthException e);

    VerifyAccountUsingPwdResponse verifyAccountUsingPwd(
        1 : string authSessionId,
        2 : AccountIdentifier accountIdentifier,
        3 : EncryptedPassword encryptedPassword
    )throws(1: AuthException e);

    VerifyPhoneResponse verifyPhone(
        1 : string authSessionId,
        2 : Device device,
        3 : UserPhoneNumber userPhoneNumber,
        4 : string pinCode
    )throws(1: AuthException e);

    VerifySocialLoginResponse verifySocialLogin(
        1 : string authSessionId,
        2 : Device device,
        3 : SocialLogin socialLogin
    )throws(1: AuthException e);

    ValidateProfileResponse validateProfile(
        1 : string authSessionId,
        2 : string displayName
    )throws(1: AuthException e);

    GetSecondAuthMethodResponse getSecondAuthMethod(
        1 : string authSessionId
    )throws(1: AuthException e);

    string openSession(
        1 : OpenSessionRequest request
    )throws(1: AuthException e);

    RegisterPrimaryResponse registerPrimaryUsingPhone(
        2 : string authSessionId
    )throws(1: AuthException e);

    GetCountryInfoResponse getCountryInfo(
        1 : string authSessionId,
        11: SimCard simCard
    )throws(1: AuthException e);

    GetUserProfileResponse getUserProfile(
        1 : string authSessionId,
        2 : AccountIdentifier accountIdentifier
    )throws(1: AuthException e);

    MigratePrimaryResponse migratePrimaryUsingPhone(
        1 : string authSessionId
    )throws(1: AuthException e);

    MigratePrimaryResponse migratePrimaryUsingSocialLogin(
        1 : string authSessionId
    )throws(1: AuthException e);

    ExchangeEncryptionKeyResponse exchangeEncryptionKey(
        1 : string authSessionId,
        2 : ExchangeEncryptionKeyRequest request
    )throws(1: AuthException e);

    SetPasswordResponse setPassword(
        1 : string authSessionId,
        2 : EncryptedPassword encryptedPassword
    )throws(1: AuthException e);

    IssueWebAuthDetailsForAcctVerifResponse issueWebAuthDetailsForAcctVerif(
        1 : string authSessionId,
        2 : AccountIdentifier accountIdentifier
    )throws(1: AuthException e);

}


