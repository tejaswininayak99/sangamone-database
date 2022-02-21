CREATE TABLE EVENTS
(
EVENT_ID INT,
CUSTOMER_ID INT,
EVENT_TOBE VARCHAR(20),
EVENT_HELD DATETIME,
PRIMARY KEY(EVENT_ID),
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID)
);

INSERT INTO EVENTS VALUES(1,1,'CHRISTMAS','2022-08-08');
INSERT INTO EVENTS VALUES(2,2,'NEW YEAR','2022-10-02');
INSERT INTO EVENTS VALUES(3,3,'ENGAGEMENT','2022-07-12');
INSERT INTO EVENTS VALUES(4,4,'MARRIAGE','2022-12-26');
INSERT INTO EVENTS VALUES(5,5,'DIWALI','2022-10-02');
INSERT INTO EVENTS VALUES(6,6,'HOLI','2022-11-03');
INSERT INTO EVENTS VALUES(7,7,'GANESH CHATURTHI','2022-09-06');
INSERT INTO EVENTS VALUES(8,8,'BIRTHDAY','2022-01-20');
INSERT INTO EVENTS VALUES(9,9,'ANNIVERSARY','2022-03-17');
INSERT INTO EVENTS VALUES(10,10,'INDEPENDENCE DAY','2022-06-13');
SELECT * FROM EVENTS;