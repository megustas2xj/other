include "com_linecorp_lt_etkt_api.thrift"


struct Admission{
      1: i64 admissionTime;
}

struct GetReservationRequest{
      1: string reservationNumber;
}

struct GetReservationResponse{
      1: Reservation reservation;
}

struct GetReservationsRequest{
      1: i64 lastFetchTimeStamp;
}

struct GetReservationsResponse{
      1: list<Reservation> reservations;
}

struct NotifyEnteringRequest{
      1: list<string> ticketIds;
}

struct NotifyEnteringResponse{
      1: i64 admissionTime;
}

struct ReturnTicketRequest{
      1: string reservationNumber;
}

struct ReturnTicketResponse{
      1: i64 returnTicketTime;
}

struct TicketException{
      1: enum code;
      2: string reason;
      3: map<string,string> parameterMap;
}

service g_a_x0_a_a{
    GetReservationResponse getReservation(
        1 : GetReservationRequest request
    )throws(1: TicketException e);

    GetReservationsResponse getReservations(
        1 : GetReservationsRequest request
    )throws(1: TicketException e);

    NotifyEnteringResponse notifyEntering(
        1 : NotifyEnteringRequest request
    )throws(1: TicketException e);

    ReturnTicketResponse returnTicket(
        1 : ReturnTicketRequest request
    )throws(1: TicketException e);

}

