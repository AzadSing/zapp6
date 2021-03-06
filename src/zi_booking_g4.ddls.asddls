@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Homepage'
define root view entity ZI_BOOKING_G4 as select from zbookings_g4
association [1..1] to ZI_TRAVEL_G4 as _Travel on $projection.TravelUuid = _Travel.TravelUuid
association [0..*] to zgender as _GenderValueHelp on $projection.Gender = _GenderValueHelp.gender
{
    key zbookings_g4.booking_uuid as BookingUuid,
    zbookings_g4.pnr as Pnr,
    zbookings_g4.travel_uuid as TravelUuid,
    zbookings_g4.booking_date as BookingDate,
    zbookings_g4.current_status as CurrentStatus,
    zbookings_g4.gender as Gender,
    zbookings_g4.passanger_name as PassangerName,
    zbookings_g4.passanger_age as PassangerAge,
    zbookings_g4.phone_number as PhoneNumber,
    zbookings_g4.user_id as UserId,
    zbookings_g4.travel_id as TravelId,
    zbookings_g4.bus_id as BusId,
    zbookings_g4.start_date as StartDate,
    zbookings_g4.empty_seats as Cancel,
    zbookings_g4.bus_name as BusName,
    zbookings_g4.departure_time as DepartureTime,
    zbookings_g4.duration as Duration,
    zbookings_g4.source as Source,
    zbookings_g4.destination as Destination,
    zbookings_g4.fare as Fare,
    case zbookings_g4.current_status
    when 'CNF' then 3
    else 1
    end as Criticality,
    zbookings_g4.total_seats as TotalSeats,
    zbookings_g4.last_changed_at as LastChangedAt,
    zbookings_g4.local_last_changed_at as LocalLastChangedAt,
    /* association */
    _Travel
  
 
  
}
