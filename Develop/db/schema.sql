
DROP DATABASE IF EXISTS ecommerce_db;


CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE category (

    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

    category_name STRING NOT NULL,

);
  

CREATE TABLE product (

  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  
    product_name  NOT NULL STRING,
    price DECIMAL NOT NULL,     
    category_id INT FOREIGN KEY (category_id) 
    REFERENCES category(id)
);

CREATE TABLE  Tag (

  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tag_name STRING
);

CREATE TABLE ProductTag (

  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,


  product_id INT 
  FOREIGN KEY (product_id) REFERENCES product(id)
    tag_id INT 
    FOREIGN KEY (Tag_id) REFERENCES Tag(id)
  
);
  
    
