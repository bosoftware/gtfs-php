create table route_stop as
select distinct r.route_id,r.route_type,t.stop_sequence, t.stop_id,s.parent_station, s.stop_name,s.stop_desc,p.direction_id from stops s , stop_times t, trips p , routes r where t.trip_id = p.trip_id and p.route_id = r.route_id and t.stop_id = s.stop_id;

create index 'stop_times-index' on stop_times (stop_id);
create index 'trip_id-index' on trips (trip_id);
create index 'trip_id-index1' on stop_times(trip_id);

create index 'route_id-index' on routes(route_id);
create index 'route_id-index1' on trips(route_id);

create index 'stop_times-index1' on stop_times (stop_id,arrival_time);
CREATE INDEX 'calendar_index' ON calendar_dates(service_id);
