DROP TABLE IF EXISTS restaurant_info;
DROP TABLE IF EXISTS restaurants;
CREATE TABLE restaurants (
        id serial PRIMARY KEY,
        name VARCHAR ( 100 ) UNIQUE NOT NULL
);
CREATE TABLE restaurant_info (
        id serial PRIMARY KEY,
        restaurant_id INT NOT NULL,
	    restaurant_type VARCHAR ( 100 ) NOT NULL,
        rating FLOAT,
        reviews INT,
	    price VARCHAR ( 100 ),
        source VARCHAR(50),
        CONSTRAINT fk_restaurant_id
		  FOREIGN KEY(restaurant_id)
					REFERENCES restaurants(id)
);

