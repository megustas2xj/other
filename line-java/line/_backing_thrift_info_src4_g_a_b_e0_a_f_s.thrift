include "g_a_b_e0_a_f_s.thrift"


struct BulkGetRequest{
      1: set<GetRequest> requests;
}

struct BulkGetResponse{
      1: map<string,GetResponseOrError> values;
}

struct BulkSetRequest{
      1: set<SetRequest> requests;
}

struct BulkSetResponse{
      1: map<string,SetResponseOrError> values;
}

struct GetRequest{
      1: string keyName;
/*
enum g.a.b.e0.a.f.s.h.class {
}
*/
      2: optional i32 ns;
}

struct GetResponse{
      1: SettingValue value;
}

struct GetResponseOrError{
      1: GetResponse response;
      2: struct error;
}

struct SetRequest{
      1: string keyName;
      2: TypedValue value;
      3: i64 clientTimestampMillis;
/*
enum g.a.b.e0.a.f.s.h.class {
}
*/
      4: optional i32 ns;
      5: optional string transactionId;
}

struct SetResponse{
      1: SettingValue value;
      2: string updateTransactionId;
}

struct SetResponseOrError{
      1: SetResponse response;
      2: struct error;
}

struct SettingValue{
      1: TypedValue value;
      2: i64 updateTimeMillis;
/*
enum g.a.b.e0.a.f.s.i.class {
}
*/
      3: optional i32 scope;
      4: optional string scopeKey;
}

struct SettingsException{
/*
enum g.a.b.e0.a.f.s.n.class {
}
*/
      1: i32 code;
      2: string reason;
      3: map<string,string> parameters;
}

struct TypedValue{
      1: bool booleanValue;
      2: i64 i64Value;
      3: string stringValue;
      4: list<string> stringListValue;
      5: list<i64> i64ListValue;
      6: string rawJsonStringValue;
      7: i8 i8Value;
      8: i16 i16Value;
      9: i32 i32Value;
     10: double doubleValue;
     11: list<i8> i8ListValue;
     12: list<i16> i16ListValue;
     13: list<i32> i32ListValue;
}

service _backing_thrift_info_src4_g_a_b_e0_a_f_s{
}


