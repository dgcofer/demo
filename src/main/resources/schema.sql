create table if not exists STORE (
    ID INT PRIMARY KEY,
    ADDRESS VARCHAR(255) NOT NULL,
    ZIP_CODE INT NOT NULL,
    STATE_CD VARCHAR(2) NOT NULL
);
create table if not exists RETURN (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    COMMENT VARCHAR(255) NOT NULL,
    SKU INT NOT NULL,
    QUANTITY INT NOT NULL,
    STORE_ID INT NOT NULL,
    CONSTRAINT store_fk FOREIGN KEY(STORE_ID) REFERENCES STORE(ID)
);