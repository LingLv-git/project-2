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


select aa.name, TRUNC(aa.average_rating::numeric,2), aa. total_reviews from (
select r.name, (a.reviews * a.rating + b.reviews * b.rating)/(a.reviews + b.reviews) average_rating, a.reviews + b.reviews as total_reviews from restaurants r
join restaurant_info a
on a.restaurant_id = r.id
join restaurant_info b
on a.restaurant_id = b.restaurant_id
where a.source='google' and b.source='yelp' ) aa
 
