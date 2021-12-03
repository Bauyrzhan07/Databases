CREATE TABLE customer(
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    country VARCHAR(15) NOT NULL,
    city VARCHAR(15) NOT NULL,
    street_name VARCHAR(15) NOT NULL,
    street_num INT NOT NULL,
    apartment_num INT NOT NULL
);
CREATE TABLE customer_mobile_numbers(
    customer_id INT REFERENCES customer,
    mobile_number VARCHAR(20) NOT NULL,
    PRIMARY KEY(customer_id,mobile_number)
);
CREATE TABLE frequent_customer(
    customer_id INT REFERENCES customer PRIMARY KEY,
    is_monthly_contract_billed BOOLEAN NOT NULL,
    discount_card_number VARCHAR(10) NOT NULL
);
CREATE TABLE infrequent_customer(
    customer_id INT REFERENCES customer PRIMARY KEY,
    credit_card_number VARCHAR(16) NOT NULL
);
CREATE TABLE bill_for_month(
    customer_id INT REFERENCES customer,
    package_id INT REFERENCES package,
    total_packages_sent INT NOT NULL,
    total_cost INT NOT NULL,
    month VARCHAR(10) NOT NULL,
    PRIMARY KEY(customer_id,package_id)
);
CREATE TABLE package(
    package_id INT PRIMARY KEY,
    type_of_package VARCHAR(15) NOT NULL,
    weight NUMERIC NOT NULL,
    timelines_of_delivery VARCHAR(20) NOT NULL,
    predicted_delivery_date DATE NOT NULL,
    delivery_cost INT NOT NULL
);
CREATE TABLE receives(
    customer_id INT REFERENCES customer,
    delivery_date DATE,
    package_id INT REFERENCES package NOT NULL,
    PRIMARY KEY(customer_id,package_id)
);
CREATE TABLE send(
    customer_id INT REFERENCES customer,
    package_id INT REFERENCES package,
    send_date DATE NOT NULL,
    PRIMARY KEY(customer_id,package_id)
);
CREATE TABLE returning_shipment(
    package_id INT REFERENCES package PRIMARY KEY,
    reason_of_return TEXT NOT NULL,
    receipt_num INT NOT NULL
);
CREATE TABLE regular_shipment(
    package_id INT REFERENCES package PRIMARY KEY,
    is_prepaid BOOLEAN NOT NULL
);
CREATE TABLE content_matter_shipment(
    package_id INT REFERENCES regular_shipment PRIMARY KEY,
    is_international_shipment BOOLEAN NOT NULL,
    is_hazardous BOOLEAN NOT NULL,
    content VARCHAR(20) NOT NULL,
    value INT NOT NULL
);
CREATE TABLE content_unimportant_shipment(
    package_id INT REFERENCES regular_shipment PRIMARY KEY
);
CREATE TABLE temporary_storage(
    storage_id INT PRIMARY KEY ,
    capacity INT NOT NULL
);
CREATE TABLE was(
    package_id INT REFERENCES package,
    storage_id INT REFERENCES temporary_storage,
    date DATE,
    PRIMARY KEY(package_id,storage_id,date)
);
CREATE TABLE currently_at(
    package_id INT REFERENCES package,
    storage_id INT REFERENCES temporary_storage,
    PRIMARY KEY(package_id,storage_id)
);
CREATE TABLE warehouse(
    storage_id INT REFERENCES temporary_storage,
    warehouse_num INT,
    country VARCHAR(15) NOT NULL,
    city VARCHAR(15) NOT NULL,
    street_name VARCHAR(15) NOT NULL,
    street_num INT NOT NULL,
    PRIMARY KEY(storage_id,warehouse_num)
);
CREATE TABLE truck(
    storage_id INT REFERENCES temporary_storage,
    truck_num INT,
    truck_model VARCHAR(20) NOT NULL,
    PRIMARY KEY(storage_id,truck_num)
);
CREATE TABLE plane(
    storage_id INT REFERENCES temporary_storage,
    plane_num INT,
    plane_model VARCHAR(20) NOT NULL,
    PRIMARY KEY(storage_id,plane_num)
);

CREATE INDEX ON send(send_date);
CREATE INDEX ON receives(delivery_date);
CREATE INDEX ON was(package_id,date);
CREATE INDEX ON currently_at(package_id,storage_id);