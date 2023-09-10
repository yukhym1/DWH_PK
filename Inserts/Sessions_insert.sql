INSERT INTO Technologies (TechnologyName) VALUES
    ('Cinetech'),
    ('IMAX'),
    ('Relux'),
    ('4DX'),
    ('Other');
	
-- 5 random cinemas
INSERT INTO Cinemas (Name_EN, Name_UA, Name_ES, Address_EN, Address_UA, Address_ES)
SELECT 
    'Cinema ' || i,
    'Кінотеатр ' || i,
    'Cine ' || i,
    'Address ' || i || ' EN',
    'Address ' || i || ' UA',
    'Address ' || i || ' ES'
FROM generate_series(1, 5) i;	

-- random number of cinemahalls per cinema
INSERT INTO CinemaHalls (CinemaID, TechnologyID, IsActive, AvailableSeats)
SELECT DISTINCT ON (CinemaID, TechnologyID)
    c.CinemaID,
    (random() * 4+ 1)::int as TechnologyID,
    'Y', 
    floor(random() * 200) + 200
FROM Cinemas c
CROSS JOIN generate_series(1, 6) i;

-- random sessions for the last year
INSERT INTO Sessions (StartTime, EndTime, TechnologyID, CinemaHallID)
SELECT 
    current_date - (random() * 365 + 1) * interval '1 day' + (random() * 24) * interval '1 hour' AS StartTime,
    current_date - (random() * 365 + 1) * interval '1 day' + (random() * 24) * interval '1 hour' + interval '2 hours' AS EndTime,
    ch.TechnologyID, 
    ch.HallID
FROM CinemaHalls ch
CROSS JOIN generate_series(1, 1000);

-- Generate 500000+ purchased tickets
INSERT INTO PurchasedTickets (RowNumber, SeatNumber, UserID, SessionID, PurchaseDate)
SELECT 
    floor(random()*20) + 1,  
    floor(random()*30) + 1,  
    floor(random()*10000) + 1, 
    s.SessionID,
    current_timestamp - (random() * 365) * interval '1 day' 
FROM Sessions s
CROSS JOIN generate_series(1, 50) p; 

COMMIT;