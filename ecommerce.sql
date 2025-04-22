CREATE DATABASE ecommerce;
-- 1. Brand
CREATE TABLE brand (
    brand_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    logo_url TEXT
);

-- 2. Product Category
CREATE TABLE product_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- 3. Product
CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    description TEXT,
    base_price DECIMAL(10, 2) NOT NULL,
    brand_id INT REFERENCES brand(brand_id),
    category_id INT REFERENCES product_category(category_id)
);

-- 4. Product Image
CREATE TABLE product_image (
    image_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT REFERENCES product(product_id),
    image_url TEXT NOT NULL,
    alt_text VARCHAR(255)
);

-- 5. Color
CREATE TABLE color (
    color_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    hex_value VARCHAR(7) -- e.g., #FFFFFF
);

-- 6. Size Category
CREATE TABLE size_category (
    size_category_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- 7. Size Option
CREATE TABLE size_option (
    size_option_id INT PRIMARY KEY AUTO_INCREMENT,
    size_category_id INT REFERENCES size_category(size_category_id),
    label VARCHAR(20) NOT NULL,
    value DECIMAL(5,2) -- Optional for numeric comparison
CREATE TABLE attribute_category (
    attribute_category_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- 12. Product Attribute
CREATE TABLE product_attribute (
    attribute_id INT PRIMARY KEY,
    product_id INT REFERENCES product(product_id),
    name VARCHAR(100) NOT NULL,
    value TEXT NOT NULL,
    type_id INT REFERENCES attribute_type(type_id),
    category_id INT REFERENCES attribute_category(attribute_category_id)
);