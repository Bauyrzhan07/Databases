--Task 1
--a)
SELECT *
FROM dealer,client;
--b)
SELECT dealer.name as dealer_name,client.name as client_name,city,sell.id as sell_number,date,amount
FROM dealer
    INNER JOIN client ON client.dealer_id=dealer.id
    INNER JOIN sell ON client.id = sell.client_id;
--c)
SELECT dealer.name as dealer_name,client.name as client_name
FROM dealer
    INNER JOIN client ON client.dealer_id = dealer.id
WHERE dealer.location=client.city;
--d)
SELECT sell.id as sell_id,amount,client.name as client_name,city
FROM sell
    INNER JOIN client ON sell.client_id=client.id
WHERE amount BETWEEN 100 AND 500;
--e)
SELECT dealer.name as dealer_name,COUNT(client.id) as client_num
FROM dealer
    LEFT JOIN client ON dealer.id=client.dealer_id
GROUP BY dealer.id;
--f)
SELECT client.name as client_name,client.city as city,dealer.name as dealer_name,dealer.charge as commission
FROM dealer
    INNER JOIN client ON client.dealer_id=dealer.id;
--g)
SELECT client.name as client_name,client.city as client_city,dealer.name as dealer_name,dealer.charge as commission
FROM dealer
    INNER JOIN client ON client.dealer_id=dealer.id
WHERE dealer.charge>0.12;
--h)
SELECT client.name as client_name,client.city as client_city,sell.id as sell_id, sell.date as sell_date,sell.amount as sell_amount,dealer.name as dealer_name,dealer.charge as comission
FROM dealer
    INNER JOIN client ON client.dealer_id=dealer.id
    FULL OUTER JOIN sell ON client.id = sell.client_id;

--Task 2
--a)
CREATE VIEW uniqueClients(number) AS
    SELECT COUNT(DISTINCT client.id)
    FROM client;
CREATE VIEW purchaseAmount(date,average_amount,total_amount) AS
    SELECT date,AVG(amount),SUM(amount)
    FROM sell
    GROUP BY date
    ORDER BY date;
--b)
CREATE VIEW topFive AS
    SELECT *
    FROM (SELECT * FROM purchaseAmount ORDER BY total_amount DESC ) as s
    LIMIT 5;
--c)
CREATE VIEW dealerSell(dealer_name,number_of_sales,average_amount,total_amount) AS
    SELECT dealer.name,COUNT(sell.id),AVG(amount),SUM(amount)
    FROM dealer
        INNER JOIN sell ON dealer.id=sell.dealer_id
    GROUP BY dealer.id;
--d)
CREATE VIEW dealersGet(location,dealers_earn) AS
    SELECT location,SUM(charge*amount)
    FROM dealer
        INNER JOIN sell ON dealer.id=sell.dealer_id
    GROUP BY location;
--e)
CREATE VIEW salesLocation(location,sal_number_of_sales,sal_average_amount,sal_total_amount) AS
    SELECT location,COUNT(sell.id),AVG(amount),SUM(amount)
    FROM dealer
        INNER JOIN sell ON dealer.id=sell.dealer_id
    GROUP BY location;
--f)
CREATE VIEW clientExpenses(city,exp_number_of_sales,exp_average_amount,exp_total_amount) AS
    SELECT city,COUNT(sell.id),AVG(amount),SUM(amount)
    FROM client
        INNER JOIN sell ON client.id=sell.client_id
    GROUP BY city;
--g)
CREATE VIEW moreExpenses AS
    SELECT *
    FROM salesLocation
        INNER JOIN clientExpenses on salesLocation.location = clientExpenses.city
    WHERE clientExpenses.exp_total_amount>salesLocation.sal_total_amount;