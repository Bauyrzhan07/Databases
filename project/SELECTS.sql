--Queries
--Assume truck 1731 is destroyed in a crash. Find all customers who had a package on that truck at the time of the crash.
-- Find all recipients who had a package on that truck at the time of the crash. Find the last successful delivery by that truck
-- prior to the crash.
CREATE VIEW truck_1731_info_at_some_date AS
    SELECT * FROM truck
        NATURAL JOIN was
        NATURAL JOIN package
        WHERE truck_num = '1731';

SELECT c.first_name,c.last_name FROM truck_1731_info_at_some_date t_inf
    INNER JOIN send s ON t_inf.package_id = s.package_id
    INNER JOIN customer c on s.customer_id = c.customer_id
    WHERE date = to_date('29-12-2021','dd-mm-yyyy');

SELECT c.first_name,c.last_name FROM truck_1731_info_at_some_date t_inf
    INNER JOIN receives r ON t_inf.package_id = r.package_id
    INNER JOIN customer c on r.customer_id = c.customer_id
    WHERE date = to_date('29-12-2021','dd-mm-yyyy');

SELECT c.first_name,c.last_name FROM truck_1731_info_at_some_date t_inf
    INNER JOIN receives r ON t_inf.package_id = r.package_id
    INNER JOIN customer c on r.customer_id = c.customer_id
    WHERE delivery_date < to_date('29-12-2021','dd-mm-yyyy')
ORDER BY delivery_date DESC
LIMIT 1;


--Find the customer who has shipped the most packages in the past year.
CREATE VIEW packages_sent_by_each_customer AS
    SELECT c.first_name,c.last_name,COUNT(p.package_id) as cnt FROM customer c
        INNER JOIN send s ON c.customer_id = s.customer_id
        INNER JOIN package p on s.package_id = p.package_id
        WHERE date_part('year',now())-date_part('year',s.send_date)<=1
    GROUP BY c.customer_id;

SELECT first_name,last_name,cnt FROM packages_sent_by_each_customer
WHERE cnt = (SELECT MAX(cnt) FROM packages_sent_by_each_customer);

--Find the customer who has spent the most money on shipping in the past year.
CREATE VIEW money_spent_by_each_customer AS
    SELECT c.first_name,c.last_name,SUM(p.delivery_cost) as cost FROM customer c
        INNER JOIN send s ON c.customer_id = s.customer_id
        INNER JOIN package p on s.package_id = p.package_id
        WHERE date_part('year',now())-date_part('year',s.send_date)<=1
    GROUP BY c.customer_id;

SELECT first_name,last_name,cost FROM money_spent_by_each_customer
WHERE cost = (SELECT MAX(cost) FROM money_spent_by_each_customer);

--Find the street with the most customers.
CREATE VIEW customers_living_on_each_street AS
    SELECT street_name,COUNT(customer_id) as cnt FROM customer
    GROUP BY street_name;

SELECT street_name,cnt FROM customers_living_on_each_street
WHERE cnt = (SELECT MAX(cnt) FROM customers_living_on_each_street);

--Find those packages that were not delivered within the promised time.
SELECT p.package_id,p.predicted_delivery_date,r.delivery_date FROM package p
    INNER JOIN receives r on p.package_id = r.package_id
WHERE r.delivery_date>p.predicted_delivery_date;

-- Generate the bill for each customer for the past month. Consider creating several types of bills.
--1) A simple bill: customer, address, and amount owed
CREATE FUNCTION default_bill(name VARCHAR(15), surname VARCHAR(15))
RETURNS TABLE(
    id INT,
    first_name VARCHAR(15),
    last_name VARCHAR(15),
    street_name VARCHAR(15),
    street_num INT,
    apartment_num INT,
    total_amount BIGINT
             ) AS $$
    BEGIN
        RETURN QUERY
            SELECT cs.customer_id,cs.first_name,cs.last_name,cs.street_name,cs.street_num,cs.apartment_num,SUM(p.delivery_cost) FROM customer cs
                INNER JOIN send s ON cs.customer_id = s.customer_id
                INNER JOIN package p ON s.package_id = p.package_id
            WHERE cs.first_name = name AND cs.last_name = surname
            GROUP BY cs.customer_id,cs.first_name,cs.last_name,cs.street_name,cs.street_num,cs.apartment_num;
    END;$$
LANGUAGE PLPGSQL;

SELECT * FROM default_bill('Bauyrzhan','Balgaziyev');

--2) A bill listing charges by type of service.
CREATE FUNCTION bill_by_type_of_service(name VARCHAR(15), surname VARCHAR(15))
RETURNS TABLE(
    id INT,
    first_name VARCHAR(15),
    last_name VARCHAR(15),
    type_of_service VARCHAR(15),
    total_amount BIGINT
) AS $$
    BEGIN
        RETURN QUERY
            SELECT cs.customer_id,cs.first_name,cs.last_name,p.type_of_package,SUM(p.delivery_cost) FROM customer cs
                INNER JOIN send s ON cs.customer_id = s.customer_id
                INNER JOIN package p on s.package_id = p.package_id
            WHERE cs.first_name = name AND cs.last_name = surname
            GROUP BY cs.customer_id,cs.first_name,cs.last_name,p.type_of_package;
    END;
    $$
LANGUAGE PLPGSQL;

SELECT * FROM bill_by_type_of_service('Bauyrzhan','Balgaziyev');
SELECT * FROM bill_by_type_of_service('Nurbol','Askarov');

--3)An itemize billing listing each individual shipment and the charges for it
CREATE FUNCTION bill_by_each_shipment(name VARCHAR(15), surname VARCHAR(15))
RETURNS TABLE(
    id INT,
    first_name VARCHAR(15),
    last_name VARCHAR(15),
    shipment_id INT,
    charge INT
) AS $$
    BEGIN
        RETURN QUERY
            SELECT cs.customer_id,cs.first_name,cs.last_name,p.package_id,p.delivery_cost FROM customer cs
                INNER JOIN send s ON cs.customer_id = s.customer_id
                INNER JOIN package p on s.package_id = p.package_id
            WHERE cs.first_name = name AND cs.last_name = surname
            GROUP BY cs.customer_id,cs.first_name,p.package_id;
    END;
    $$
LANGUAGE PLPGSQL;
SELECT * FROM bill_by_each_shipment('Bauyrzhan','Balgaziyev');
