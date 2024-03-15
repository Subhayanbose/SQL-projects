-- Q> Retrive information about all Airlines.

  select * from airlines;


-- Q> Retrive information about all Aircrafts.

  select * from aircrafts;



-- Q> Retrive a list of passengers for a specific flight.

  select p.* 
  from passengers as p 
  join reservations as r 
  on p.PassengerID=r.PassengerID 
  where FlightID=1;



-- Q> Retrive a list of flights for a specific Airline.

  select * from flights 
  where AirlineID=1;



-- Q> Retrive available seats for a specific flight.

  select f.FlightID,f.FlightNumber,f.DepartureTime,f.ArrivalTime,f.DepartureAirport,f.ArrivalAirport,f.AircraftID,a.Capacity,a.CurrentStatus 
  from flights as f 
  join aircrafts as a 
  on f.AircraftID=a.AircraftID 
  left join reservations as r 
  on f.FlightID=r.FlightID 
  where f.FlightID=r.FlightID and (r.ReservationID is not null );



-- Q> Retrive the total number of reservations for a specific flight.
  
  select count(*) as total_no_of_reservations 
  from reservations 
  where FlightID=1;



-- Q> Retrive a list of passengers with their flight details for a specific airline

  select p.PassengerID,p.FirstName,p.LastName,r.ReservationID,r.FlightID,r.SeatNumber,r.ReservationTime,f.FlightNumber,f.DepartureAirport,f.ArrivalAirport,f.DepartureTime,f.ArrivalTime 
  from passengers as p  
  join reservations as r 
  on p.PassengerID=r.PassengerID 
  join flights as f 
  on r.FlightID=f.FlightID;

