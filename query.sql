select aa.name, TRUNC(aa.average_rating::numeric,2) average_rating, aa. total_reviews from (
select r.name, (a.reviews * a.rating + b.reviews * b.rating)/(a.reviews + b.reviews) average_rating, a.reviews + b.reviews as total_reviews from restaurants r
join restaurant_info a
on a.restaurant_id = r.id
join restaurant_info b
on a.restaurant_id = b.restaurant_id
where a.source='google' and b.source='yelp' ) aa