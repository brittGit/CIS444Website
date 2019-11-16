-- JOHN DOE INSERTS
INSERT INTO PERSON VALUES
    (123456789,
    'John',
    'Smith')
INSERT INTO PHONE VALUES
    (123456789,
    '(800)900-1000)',
    'Home')
INSERT INTO EMAIL VALUES
    (123456789,
    'jdoe@doej.com',
    'Home')


-- JANE DOE INSERTS
INSERT INTO PERSON VALUES
    (987654321,
    'Jane',
    'Doe')
INSERT INTO PHONE VALUES
    (987654321,
    '858-577-1234',
    'Work')
INSERT INTO EMAIL VALUES
    (987654321,
    'jadoe@doeja.com',
    'Home')
INSERT INTO EMAIL VALUES
    (987654321,
    'jadoe@business.com',
    'Work')


-- JIM SMITH INSERTS
INSERT INTO PERSON VALUES
    (Jim, Smith, 567894321)
INSERT INTO EMAIL VALUES
(567894321, 'jim@email.com', 'Home')


-- JONATHAN JOESTAR INSERTS
INSERT INTO PERSON VALUES
(192837465, 'Jonathan', 'Joestar')
INSERT INTO EMAIL VALUES
(192837465, 'jo@jo.com', 'Work')


-- Create a room
-- No need to create a room until there is something to report
INSERT INTO ROOM VALUES
    ('SBSB',
    2201,
    2)


-- create a report
INSERT INTO REPORT (General_type, report_No, Building, Room_Number, Floor, ID_number)
VALUES ('Damage', 'SBSB22010001', 'SBSB', 2201, 2, 987654321)
