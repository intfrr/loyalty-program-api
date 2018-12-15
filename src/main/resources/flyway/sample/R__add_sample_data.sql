INSERT INTO members(email, name, avatar_path, give_away_pool, gained_points) VALUES('simon@sample.com', 'simon', 'default-avatar.png', 10, 40);
INSERT INTO members(email, name, avatar_path, give_away_pool, gained_points) VALUES('member@sample.com', 'member', 'default-avatar.png', 10, 80);

INSERT INTO rewards(price, description, logo_path, amount, expiration_date) VALUES(50, 'Banana', 'http://www.pngall.com/wp-content/uploads/2016/04/Banana-Free-Download-PNG.png', 3, '2100-10-10');
INSERT INTO rewards(price, description, logo_path, amount, expiration_date) VALUES(30, 'Handshake', 'https://openclipart.org/download/276483/1490609861.svg', 1000, '2100-10-10');
INSERT INTO rewards(price, description, logo_path, amount, expiration_date) VALUES(10000, 'Lamborghini', 'https://www.luxuryauto.rentals/wp-content/uploads/2015/10/sports-car-rentals-3-500x500.png', 2, '2100-10-10');

INSERT INTO bonuses(points, giver_id, receiver_id, category_id, description) VALUES(120, 2, 3, 1, 'Good pool tips');
INSERT INTO bonuses(points, giver_id, receiver_id, category_id, description) VALUES(80, 2, 3, 1, 'You are a good man');
INSERT INTO bonuses(points, giver_id, receiver_id, category_id, description) VALUES(30, 3, 2, 1, 'You too');

INSERT INTO member_rewards(member_id, price, description, logo_path, status) VALUES(2, 50, 'Banana', 'http://www.pngall.com/wp-content/uploads/2016/04/Banana-Free-Download-PNG.png', 'PENDING');
INSERT INTO member_rewards(member_id, price, description, logo_path, status) VALUES(3, 30, 'Handshake', 'https://openclipart.org/download/276483/1490609861.svg', 'REALIZED');
INSERT INTO member_rewards(member_id, price, description, logo_path, status) VALUES(3, 10000, 'Lamborghini', 'https://www.luxuryauto.rentals/wp-content/uploads/2015/10/sports-car-rentals-3-500x500.png', 'REJECTED');
