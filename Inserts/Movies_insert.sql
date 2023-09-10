DO $$ 
BEGIN
    INSERT INTO Technologies (TechnologyName) VALUES 
        ('Cinetech'),
        ('IMAX'),
        ('Relux'),
        ('4DX'),
        ('Other');
		
	    INSERT INTO Genres (GenreName) VALUES 
        ('Action'),
        ('Comedy'),
        ('Drama'),
        ('Adventure'),
        ('Science Fiction'),
        ('Fantasy'),
        ('Horror'),
        ('Romance'),
        ('Thriller'),
        ('Animation'),
        ('Family'),
        ('Mystery'),
        ('Crime'),
        ('Biography'),
        ('Documentary'),
        ('History'),
        ('War'),
        ('Music'),
        ('Sport');
    
    INSERT INTO Categories (CategoryName) VALUES 
        ('New Releases'),
        ('Top Rated'),
        ('Popular'),
        ('Classic'),
        ('Independent'),
        ('Oscar Winners'),
        ('Kids & Family'),
        ('Superheroes'),
        ('Sci-Fi & Fantasy'),
        ('Horror'),
        ('Comedy'),
        ('Action & Adventure'),
        ('Romance'),
        ('Drama'),
        ('Mystery & Thriller'),
        ('Animation'),
        ('Documentary'),
        ('Musical'),
        ('Historical'),
        ('Sports');		
END $$;

INSERT INTO Movies (Title_EN, Title_UA, Title_ES, Description_EN, Description_UA, Description_ES, Duration)
SELECT
	'Movie ' || i,
    'Фільм ' || i,
    'Película ' || i,
    'Description for Movie ' || i,
    'Опис для фільму ' || i,
    'Descripción para Película ' || i,
    (i % 180) + 60 
FROM generate_series(1, 1000) i;

INSERT INTO MoviesGenres (MovieID, GenreID)
SELECT DISTINCT ON (MovieID, genre_id)
    MovieID,
    (random() * 3 + 1)::int as genre_id
FROM Movies
CROSS JOIN generate_series(1, 5);

INSERT INTO MoviesCategories (MovieID, CategoryID)
SELECT DISTINCT ON (MovieID, categoryID)
    MovieID,
    (random() * 3 + 1)::int as categoryID
FROM Movies
CROSS JOIN generate_series(1, 5);

INSERT INTO MoviesTechnologies (MovieID, TechnologyID)
SELECT DISTINCT ON (MovieID, technologyID)
    MovieID,
    (random() * 4 + 1)::int as technologyID
FROM Movies
CROSS JOIN generate_series(1, 5);

COMMIT;