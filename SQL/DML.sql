INSERT INTO AUTHOR VALUES
('201', 'Greg', 'Hoover'),
('202', 'Lydia R.', 'Outland'),
('203', 'Julia', 'Quinn'),
('204', 'Paulo', 'Coelho'),
('205', 'Richard', 'Templar'),
('206', 'Veronica' ,'Roth');

INSERT INTO PUBLISHERS VALUES
('Black Rose Writing', 'BlackRoseWriting@Gmail.com', '8237548232', 0),
('Avon', 'AvonBooks@Gmail.com','4378273942', 0),
('Harper One', 'HarperOnePublishing@Outlook.com','4736573421', 0),
('Pearson Business', 'PearsonPublishing@Outlook.com','4637584723',0),
('Katherine Tegan Books', 'KatherineTBooks@Gmail.com','2464638574',0);


INSERT INTO BILLING VALUES
('190001', 'Dan', 'Florence', '4024007199683318', '320', '09/2029'),
('190002', 'Megan', 'Dry', '4532878338543588','196', '12/2024'),
('190003', 'Sam', 'Johnson', '4929683801074728','312', '06/2025'),
('190004', 'August', 'Williams', '4716967842162296', '481','02/2024');

INSERT INTO ADDRESS VALUES
('120001', '132 Glebe Road', 'K1P1J1', 'Ottawa', 'Canada'),
('120002', '544 Church Avenue', 'K7L3B5', 'Kingston', 'Canada'),
('120003', '32 Stanlet Close', 'K1E3M1','Orleans', 'Canada'),
('120004', '21 Regent Street','H2Y1H3','Montreal', 'Canada');

INSERT INTO USERS VALUES
('100', 'OweBookner', '3852749','LookInaBook@gmail.com', NULL, NULL, 'Owner'),
('101', 'DragonFly37', 'LilyFlower29', 'Kauanoe1@outlook.com', '190001', '120001', 'Customer'),
('102', 'BeachPrincess', '37294swim', 'hameltg@gmail.com', '190002', '120002', 'Customer'),
('103', 'LooneyToes', 'bigBunny100', 'loxix@gmail.com', '190003', '120003', 'Customer'),
('104', 'Dafildillypickle', 'daisyPickle100', 'alismishina@yahoo.com', '190004', '120004', 'Customer');

INSERT INTO BOOKS VALUES
('978-1684337071', 'THE WITCHING OF THE KING', 147, 19.95, 20, 'Black Rose Writing'),
('978-1684338863', 'ASH AND GOLD', 465, 7.72, 20, 'Black Rose Writing'),
('978-0062353597', 'The Duke and I', 448, 8.79, 20, 'Avon'),
('978-0063138629', 'The Viscount Who Loved Me', 480,  7.50, 20, 'Avon'),
('978-0062315007', 'The Alchemist', 208, 13.59, 20, 'Harper One'),
('978-1292191638', 'The Rules of People', 240, 14.50, 20, 'Pearson Business'),
('978-0062387240', 'Divergent (Divergent Series#1)', 576, 9.06, 20, 'Katherine Tegan Books'),
('978-0062024053', 'Insurgent (Divergent Series#2)', 592, 9.99, 20, 'Katherine Tegan Books');

INSERT INTO WRITES VALUES
('978-1684337071', 201),
('978-1684338863', 202),
('978-0062353597', 203),
('978-0063138629', 203),
('978-0062315007', 204),
('978-1292191638', 205),
('978-0062387240', 206),
('978-0062024053', 206);

INSERT INTO GENBOOK VALUES 
('978-1684337071', 'Historical'),
('978-1684337071', 'Mystery'),
('978-1684337071', 'Fiction'),
('978-1684337071', 'Adventure'),
('978-1684338863', 'Mystery'),
('978-1684338863', 'Fiction'),
('978-0062353597', 'Romance'), 
('978-0062353597', 'Fiction'),
('978-0062353597', 'Historical'),
('978-0063138629', 'Romance'),
('978-0063138629', 'Fiction'),
('978-0063138629', 'Historical'),
('978-0062315007', 'Fiction'),
('978-0062315007', 'Fantasy'),
('978-0062315007', 'Philosophy'),
('978-1292191638', 'Psychology'),
('978-1292191638', 'Self-Help'),
('978-1292191638', 'Nonfiction'),
('978-0062387240', 'Science Fiction'),
('978-0062387240', 'Dystopia'),
('978-0062387240', 'Romance'),
('978-0062387240', 'Adventure'),
('978-0062024053', 'Science Fiction'),
('978-0062024053', 'Dystopia'),
('978-0062024053', 'Romance'),
('978-0062024053', 'Adventure');

INSERT INTO ORDERS VALUES
('1111000001', '103', '190003', '120003', '273827394721', 'Delivered'),
('1111000002', '103', '190003', '120003', '837488294723', 'Shipped'),
('1111000003', '101', '190001', '120001', '747629402182', 'Processing');

INSERT INTO SHOPPINGCART VALUES
('10201', '103', '978-0062353597', 1,false),
('10202', '103', '978-0063138629', 1,false),
('10203', '102', '978-0062387240', 1,false),
('10204', '102', '978-0062024053', 1,false);





