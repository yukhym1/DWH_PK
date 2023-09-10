DO $$ 
DECLARE
    i INT;
    profileCount INT;
    orderCount INT;
    hasTransaction BOOLEAN;
BEGIN
    FOR i IN 1..10000 LOOP

        INSERT INTO Users (PhoneNumber, Email, IsVerified)
        VALUES 
            ('+1234567890', 'user' || i || '@example.com', CASE WHEN random() < 0.5 THEN 'Y' ELSE 'N' END);
        
        -- 1 or 2 profiles for each user
        profileCount := floor(random() * 2) + 1;
        FOR j IN 1..profileCount LOOP
            INSERT INTO Profiles (UserID, ProfileType, ProfileData)
            VALUES 
                (i, 'Profile ' || j, 'Profile data for user ' || i || ', profile ' || j);
        END LOOP;

        -- 0 to 20 orders for each user
        orderCount := floor(random() * 21);
        FOR k IN 1..orderCount LOOP

            INSERT INTO Orders (UserID, OrderDate, TotalAmount, OrderDetails)
            VALUES 
                (i, current_timestamp - (floor(random() * 365) + 1) * interval '1 day', random() * 1000, 'Order details for user ' || i || ', order ' || k);

            -- order made a transaction with 90%
            hasTransaction := random() < 0.9;
            
            IF hasTransaction THEN

                INSERT INTO Transactions (UserID, OrderID, TransactionDate, TransactionAmount, TransactionDetails)
                VALUES 
                    (i, currval('orders_orderid_seq'), current_timestamp - (floor(random() * 30) + 1) * interval '1 day', random() * 1000, 'Transaction details for user ' || i || ', order ' || k);
            END IF;
        END LOOP;
    END LOOP;
END $$;

COMMIT;
