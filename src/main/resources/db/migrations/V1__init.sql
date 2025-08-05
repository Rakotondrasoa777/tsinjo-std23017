CREATE TABLE donor (
                       id VARCHAR(200) PRIMARY KEY,
                       email VARCHAR(200) NOT NULL,
                       name VARCHAR(200) NOT NULL
);

CREATE TABLE payment (
                         id VARCHAR(200) PRIMARY KEY,
                         id_donor VARCHAR(200),
                         date_payment DATE,
                         amount BIGINT,
                         CONSTRAINT fk_donor_payment FOREIGN KEY (id_donor) REFERENCES donor (id)
);

CREATE TABLE don (
                     id VARCHAR(200) PRIMARY KEY,
                     id_donor VARCHAR(200),
                     id_payment VARCHAR(200),
                     CONSTRAINT fk_donor_don FOREIGN KEY (id_donor) REFERENCES donor (id),
                     CONSTRAINT fk_payment_don FOREIGN KEY (id_payment) REFERENCES payment (id)
);
