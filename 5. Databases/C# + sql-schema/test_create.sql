-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-11-02 16:07:24.233

-- tables
-- Table: address
CREATE TABLE address (
    address_id int  NOT NULL,
    state char(255)  NOT NULL,
    city char(255)  NOT NULL,
    street char(255)  NOT NULL,
    house int  NOT NULL,
    CONSTRAINT address_pk PRIMARY KEY (address_id)
);

-- Table: book
CREATE TABLE book (
    book_id int  NOT NULL,
    isbn char(16)  NOT NULL,
    title char(255)  NOT NULL,
    author char(255)  NOT NULL,
    price decimal(2,2)  NOT NULL,
    CONSTRAINT book_pk PRIMARY KEY (book_id)
);

-- Table: books_being_purchased
CREATE TABLE books_being_purchased (
    item_id int  NOT NULL,
    purchase_id int  NOT NULL,
    book_id int  NOT NULL,
    quantity int  NOT NULL,
    CONSTRAINT books_being_purchased_pk PRIMARY KEY (item_id)
);

-- Table: client
CREATE TABLE client (
    client_id int  NOT NULL,
    full_name varchar(255)  NOT NULL,
    email varchar(255)  NOT NULL,
    CONSTRAINT client_pk PRIMARY KEY (client_id)
);

-- Table: purchase
CREATE TABLE purchase (
    purchase_id int  NOT NULL,
    client_id int  NOT NULL,
    address_id int  NOT NULL,
    CONSTRAINT purchase_pk PRIMARY KEY (purchase_id)
);

-- foreign keys
-- Reference: books_being_purchased (table: books_being_purchased)
ALTER TABLE books_being_purchased ADD CONSTRAINT books_being_purchased
    FOREIGN KEY (book_id)
    REFERENCES book (book_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: books_belonging_to_a_purchase (table: books_being_purchased)
ALTER TABLE books_being_purchased ADD CONSTRAINT books_belonging_to_a_purchase
    FOREIGN KEY (purchase_id)
    REFERENCES purchase (purchase_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: client_purchase (table: purchase)
ALTER TABLE purchase ADD CONSTRAINT client_purchase
    FOREIGN KEY (client_id)
    REFERENCES client (client_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: purchase_address (table: purchase)
ALTER TABLE purchase ADD CONSTRAINT purchase_address
    FOREIGN KEY (address_id)
    REFERENCES address (address_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

