CREATE TABLE product_prices (
    id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    valid_from TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_price_product
        FOREIGN KEY (product_id)
        REFERENCES products(id)
        ON DELETE CASCADE
);
GO