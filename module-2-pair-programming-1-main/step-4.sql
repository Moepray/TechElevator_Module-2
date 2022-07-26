-- select the park name, campground name, open_from_mm, open_to_mm & daily_fee ordered by park name and then campground name
SELECT p.name AS park_name, c.name AS campground_name, open_from_mm, open_to_mm, daily_fee
FROM park p JOIN campground c ON p.park_id = c.park_id ORDER BY p.name, c.name;

-- select the park name and the total number of campgrounds for each park ordered by park name
SELECT p.name, COUNT(*) AS num_of_campgrounds FROM park p JOIN campground c ON p.park_id = c.park_id GROUP BY p.name ORDER BY p.name;


-- select the park name, campground name, site number, max occupancy, accessible, max rv length, utilities where the campground name is 'Blackwoods'
SELECT p.name, c.name, site_id, max_occupancy, accessible, max_rv_length, utilities
FROM park p
JOIN campground c ON p.park_id = c.park_id
JOIN site s ON c.campground_id = s.campground_id
WHERE c.name = 'Blackwoods';
/*
  select park name, campground, total number of sites (column alias 'number_of_sites') ordered by park
  -------------------------------------------------
    Acadia	Blackwoods	276
    Acadia	Seawall	198
    Acadia	Schoodic Woods	92
    Arches	"Devil's Garden"	49
    Arches	Canyon Wren Group Site	1
    Arches	Juniper Group Site	1
    Cuyahoga Valley	The Unnamed Primitive Campsites	5
  -------------------------------------------------
*/
SELECT p.name AS park_name, c.name AS campground_name, COUNT(*) AS number_of_sites
FROM park p
JOIN campground c ON p.park_id = c.park_id
JOIN site s ON c.campground_id = s.campground_id
GROUP BY p.name, c.name
ORDER BY p.name;



-- select site number, reservation name, reservation from and to date ordered by reservation from date
SELECT s.site_id, r.name, from_date, to_date
FROM site s
JOIN reservation r ON s.site_id = r.site_id
ORDER BY from_date;


/*
  select campground name, total number of reservations for each campground ordered by total reservations desc
  -------------------------------------------------
    Seawall	13
    Blackwoods	9
    "Devil's Garden"	7
    Schoodic Woods	7
    The Unnamed Primitive Campsites	5
    Canyon Wren Group Site	4
    Juniper Group Site	4
  -------------------------------------------------
*/
SELECT c.name, COUNT(*) AS num_of_reservations
FROM campground c
JOIN site s ON c.campground_id = s.campground_id
JOIN reservation r ON s.site_id = r.site_id
GROUP BY c.name
ORDER BY num_of_reservations DESC;




