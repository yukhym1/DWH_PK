import psycopg2

config_user = "postgres"
config_password = "1"
config_host = "localhost"
config_port = "5433"

source_conn = psycopg2.connect(
    database="Movies",
    user=config_user,
    password=config_password,
    host=config_host,
    port=config_port
)

source_cursor = source_conn.cursor()

target_conn = psycopg2.connect(
    database="DWH",
    user=config_user,
    password=config_password,
    host=config_host,
    port=config_port
)

target_cursor = target_conn.cursor()

source_cursor.execute("SELECT * FROM Movies")
movies_data = source_cursor.fetchall()

source_cursor.execute("SELECT * FROM Genres")
genres_data = source_cursor.fetchall()

source_cursor.execute("SELECT * FROM Categories")
categories_data = source_cursor.fetchall()

source_cursor.execute("SELECT * FROM Technologies")
technologies_data = source_cursor.fetchall()

source_cursor.execute("SELECT * FROM MoviesGenres")
movies_genres_data = source_cursor.fetchall()

source_cursor.execute("SELECT * FROM MoviesCategories")
movies_categories_data = source_cursor.fetchall()

source_cursor.execute("SELECT * FROM MoviesTechnologies")
movies_technologies_data = source_cursor.fetchall()

for movie in movies_data:
    target_cursor.execute(
        "INSERT INTO Movies (MovieID, Title_EN, Title_UA, Title_ES, Description_EN, Description_UA, Description_ES, Duration) "
        "VALUES (%s, %s, %s, %s, %s, %s, %s, %s)",
        movie
    )

for genre in genres_data:
    target_cursor.execute(
        "INSERT INTO Genres (GenreID, GenreName) VALUES (%s, %s)",
        genre
    )

for category in categories_data:
    target_cursor.execute(
        "INSERT INTO Categories (CategoryID, CategoryName) VALUES (%s, %s)",
        category
    )    

for technology in technologies_data:
    target_cursor.execute(
        "INSERT INTO Technologies (TechnologyID, TechnologyName) VALUES (%s, %s)",
        technology
    )

for movie_genre in movies_genres_data:
    target_cursor.execute(
        "INSERT INTO MoviesGenres (MovieID, GenreID) VALUES (%s, %s)",
        movie_genre
    )

for movie_category in movies_categories_data:
    target_cursor.execute(
        "INSERT INTO MoviesCategories (MovieID, CategoryID) VALUES (%s, %s)",
        movie_category
    )

for movie_technology in movies_technologies_data:
    target_cursor.execute(
        "INSERT INTO MoviesTechnologies (MovieID, TechnologyID) VALUES (%s, %s)",
        movie_technology
    )

source_cursor.close()
source_conn.close()

source_conn = psycopg2.connect(
    database="Sessions",
    user=config_user,
    password=config_password,
    host=config_host,
    port=config_port
)

source_cursor = source_conn.cursor()

source_cursor.execute("SELECT * FROM Cinemas")
cinemas_data = source_cursor.fetchall()

source_cursor.execute("SELECT * FROM CinemaHalls")
cinema_halls_data = source_cursor.fetchall()

source_cursor.execute("SELECT * FROM Sessions")
sessions_data = source_cursor.fetchall()

source_cursor.execute("SELECT * FROM PurchasedTickets")
purchased_tickets_data = source_cursor.fetchall()

for cinema in cinemas_data:
    target_cursor.execute(
        "INSERT INTO Cinemas (CinemaID, Name_EN, Name_UA, Name_ES, Address_EN, Address_UA, Address_ES) "
        "VALUES (%s, %s, %s, %s, %s, %s, %s)",
        cinema
    )

for cinema_hall in cinema_halls_data:
    target_cursor.execute(
        "INSERT INTO CinemaHalls (HallID, CinemaID, TechnologyID, IsActive, AvailableSeats) "
        "VALUES (%s, %s, %s, %s, %s)",
        cinema_hall
    )

for session in sessions_data:
    target_cursor.execute(
        "INSERT INTO Sessions (SessionID, StartTime, EndTime, TechnologyID, MovieID, CinemaHallID) "
        "VALUES (%s, %s, %s, %s, %s, %s)",
        session
    )

source_cursor.close()
source_conn.close()


source_conn = psycopg2.connect(
    database="Users",
    user=config_user,
    password=config_password,
    host=config_host,
    port=config_port
)

source_cursor = source_conn.cursor()

source_cursor.execute("SELECT * FROM Users")
users_data = source_cursor.fetchall()

source_cursor.execute("SELECT * FROM Profiles")
profiles_data = source_cursor.fetchall()

source_cursor.execute("SELECT * FROM Orders")
orders_data = source_cursor.fetchall()

source_cursor.execute("SELECT * FROM Transactions")
transactions_data = source_cursor.fetchall()

for user in users_data:
    target_cursor.execute(
        "INSERT INTO Users (UserID, PhoneNumber, Email, IsVerified) "
        "VALUES (%s, %s, %s, %s)",
        user
    )

for purchased_ticket in purchased_tickets_data:
    target_cursor.execute(
        "INSERT INTO PurchasedTickets (TicketID, RowNumber, SeatNumber, UserID, SessionID, PurchaseDate) "
        "VALUES (%s, %s, %s, %s, %s, %s)",
        purchased_ticket
    )

for profile in profiles_data:
    target_cursor.execute(
        "INSERT INTO Profiles (ProfileID, UserID, ProfileType, ProfileData) "
        "VALUES (%s, %s, %s, %s)",
        profile
    )

for order in orders_data:
    target_cursor.execute(
        "INSERT INTO Orders (OrderID, UserID, OrderDate, TotalAmount, OrderDetails) "
        "VALUES (%s, %s, %s, %s, %s)",
        order
    )

for transaction in transactions_data:
    target_cursor.execute(
        "INSERT INTO Transactions (TransactionID, UserID, OrderID, TransactionDate, TransactionAmount, TransactionDetails) "
        "VALUES (%s, %s, %s, %s, %s, %s)",
        transaction
    )

source_cursor.close()
source_conn.close()

target_conn.commit()

target_cursor.close()
target_conn.close()