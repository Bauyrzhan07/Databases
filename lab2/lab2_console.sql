--Task 2
create table customer(
    id integer primary key,
    full_name varchar(50) not null,
    timestamp timestamp not null,
    delivery_address text not null
);

create table orders(
    code integer primary key,
    customer_id integer,
    total_sum double precision check (total_sum>0) not null,
    is_paid boolean not null,
    foreign key (customer_id) references customer
);

create table products(
    id varchar primary key,
    name varchar not null unique,
    description text,
    price double precision not null check (price>0)
);

create table order_items(
    order_code integer,
    product_id varchar,
    quantity integer not null check (quantity>0),
    primary key (order_code,product_id),
    foreign key (order_code) references orders,
    foreign key (product_id) references products
);

--Task 3

create table students(
    full_name varchar primary key,
    age integer not null,
    birth_date date not null,
    gender varchar not null,
    average_grade double precision not null,
    information text not null,
    need_for_dorm boolean not null,
    additional_info text
);
create table instructors(
    full_name varchar primary key,
    remote_lessons boolean not null
);

create table work_exp(
    instructor_name varchar not null,
    company_name varchar not null,
    primary key(instructor_name,company_name),
    foreign key(instructor_name) references instructors(full_name)
);

create table languages(
    instructor_name varchar not null,
    language_name varchar not null,
    primary key(instructor_name,language_name),
    foreign key(instructor_name) references instructors(full_name)
);

create table lesson_participants(
    lesson_title varchar,
    instructor varchar,
    room_num integer not null,
    primary key(lesson_title,instructor),
    foreign key(instructor) references instructors(full_name)
);

create table studying_students(
    full_name varchar not null,
    studying_lesson varchar not null,
    teaching_instructor varchar not null,
    primary key(full_name,studying_lesson),
    foreign key(studying_lesson,teaching_instructor) references lesson_participants,
    foreign key(full_name) references students(full_name)
);




--Task 4
INSERT INTO customer(full_name, timestamp, delivery_address) values('Balgaziyev Bauyrzhan','2021-09-21 20:22:50','Kerderi 121');
INSERT INTO orders values(1,1,1000,true);
INSERT INTO products values(1,'apple','aport apples straight from Almaty',600.00);
INSERT INTO order_items values(1,1,2);

UPDATE customer SET delivery_address='Abay 153' WHERE id=1;
UPDATE orders SET total_sum=1200 where customer_id=1;
UPDATE products SET price=650.00 where name='apple';
UPDATE order_items SET quantity=3 where order_code=1;

DELETE FROM order_items WHERE order_code=1;
DELETE FROM products WHERE name='apple';
DELETE FROM orders WHERE code=1;
DELETE FROM customer WHERE id=1;



