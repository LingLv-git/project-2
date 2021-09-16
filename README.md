# Project 2 - Extract, Transform, Load

### Background
Review is one of metrics to measure the popularities of restaurants. Positive reviews indicate that a restaurant offers amazing customer service, an attractive atmosphere and top-quality of food. The good reviews can also attract millions of people to a restaurant’s existence and produce an uplift in sales. There’s are different review sources that customer can access, among them, **google** reviews and **yelp** are two trustable sources of reviews. 

### Specific objectives of the project
Georgia Institute of Technology (Georgia Tech) is one of the centers of education, business, and tourism in Atlanta.  The objective of this project is to extract data from **google** reviews and **yelp** about restaurants within 1 mile walking distance of Georgia Institute of Technology (Georgia Tech). 




### Data Extract and Transform
1. [yelp scraping](yelp_scraping.ipynb) included code using `beautifulsoup` , `splinter` to scrape data such as restaurants name, restaurant type, number of reviews, reviews stars, ect. Data is cleaned, and saved in [yelp_clean_data.csv](output/yelp_clean_data.csv).
2. [google scraping](google_scraping.ipynb) 
3. [post process](post_process.ipynb) post process csv files generated from yelp scraping and google scraping (yelp_clean_data.csv and google_data.csv). it generates three new csv files that are ready to be imported into database table (e.g. it generates foregin key column resautant_id).
   1. [restaurants.csv](output/restaurants.csv) ready to be imported to restaurant table.
   2. [restaurant_yelp_to_import.csv](output/restaurant_yelp_to_import.csv) ready to be imported to restaurant_info table
   3. [restaurant_google_to_import.csv](output/restaurant_google_to_import.csv) ready to be imported to restaurant_info table

### Data Load

1.  Setup db
For the first time, run sql in [schema.sql](schema.sql) file to create database tables. It will create:
    * restaurants table: keeps restaurant name and id
    * restaurant_info table: it has foregin key to reference to restaurants table id column, as well as all data scraped from google and yelp

2. load csv files

   * **restaurants.csv** need to be loaded to restaurants table using pgadmin
   * **restaurant_yelp_to_import.csv** need to be loaded to restaurant_info using pgadmin
   * **restaurant_google_to_import.csv** need to be loaded to restaurant_info using pgadmin
   * Run query in file [query.sql](query.sql) to join restaurant information

### Result
The screen shot of the query is kept in repository at [result.png](out/../output/result.png). it shows the average rating.

