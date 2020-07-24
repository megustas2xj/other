include "g_a_x0_a_a.thrift"


struct Reservation{
     18: Admission admission;
      5: string artistName;
     15: required string commEventDesc;
     12: required i64 deletableTime;
      9: required i64 doorTime;
     10: required i64 enableDoorTime;
     13: enum entryCheckMethod;
     19: i32 entryCheckTimeoutSec;
     14: string eventDesc;
      6: string eventImgUrl;
      3: required string eventTitle;
      4: string eventVenue;
      2: i32 offlineEnabled;
      1: required string reservationNumber;
      7: required i64 startDate;
      8: required i64 startTime;
     17: required list<Ticket> tickets;
     16: required UIInfo uiInfo;
     11: required i64 validLimitTime;
}

struct Ticket{
      2: i32 displayOrder;
     14: string facePhotoUrl;
      8: string fcId;
      3: string ownerName;
      9: string priceString;
     11: string qrCodeId;
     13: string qrCodeType;
     12: string qrCodeValue;
      5: string seatClass;
      6: string seatInfoPrimary;
      7: string seatInfoSecondary;
      4: string ticketClass;
     10: string ticketDesc;
      1: required string ticketId;
     15: required UIInfo uiInfo;
}

struct UIInfo{
      3: string bgColor;
      5: string bgImgUrl;
      7: string extData;
      4: string fgColor;
      6: string fgImgUrl;
      2: i32 schemeVersion;
      1: string uiFormat;
}

service com_linecorp_lt_etkt_api{
}

