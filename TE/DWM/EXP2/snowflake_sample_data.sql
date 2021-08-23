INSERT INTO `time` (
    day,
    month,
    year,
    quarter
) VALUES (
    3,
    8,
    2020,
    3
),(
    1,
    2,
    2021,
    1
),(
    2,
    3,
    2021,
    4
),(
    1,
    10,
    2021,
    2
);

INSERT INTO `brand` (
    name
) VALUES (
    "Levi's"
),(
    "Society"
),(
    "Lenovo"
),(
    "Logitech"
),(
    "TCL"
);

INSERT INTO `category` (
    name,
    code
) VALUES (
    "Clothing",
    43
),(
    "Food",
    67
),(
    "Electronics",
    134
);

INSERT INTO `item` (
    brand_id,
    name, 
    category_id,
    price,
    discounted_price
) VALUES (
    1,
    "501 Jeans",
    1,
    1999,
    1799
),(
    2,
    "Tea powder",
    2,
    30,
    30
),(
    3,
    "Ideapad 330S-15IKB",
    3,
    23899,
    20699
),(
    4,
    "MK225 Silent Mouse",
    3,
    1999,
    1799
),(
    5,
    "32 inch HD ready TV",
    3,
    12999,
    9999
);

INSERT INTO `country` (
    name,
    code
) VALUES (
    "India",
    91
),(
    "The United States of America",
    1
);

INSERT INTO `location` (
    country_id,
    state,
    city,
    district
) VALUES (
    1,
    "Maharashtra",
    "Mumbai",
    "Mumbai Suburban"
),(
    1,
    "Maharashtra",
    "Nagpur",
    "Ramtek"
),(
    1,
    "Goa",
    "Mapusa",
    "Bardez"
),(
    1,
    "Goa",
    "Tiswadi",
    "Panaji"
),(
    1,
    "Kerela",
    "Vasco da Gama",
    "Mormugao"
);

INSERT INTO `branch` (
    name,
    address
) VALUES (
    "South Bombay",
    "332 St, Cumbala Hill, Mumbai 400001"
),(
    "Andheri",
    "231, Andheri MIDC, Near Marol Bus Depot, Mumbai 400035"
),(
    "Kandivali",
    "675, Near Huma Cinemas, Mumbai 400028"
);

INSERT INTO `sales` (
    time_id,
    item_id,
    location_id,
    branch_id,
    total_items_sold,
    total_sale_amt,
    total_discount
) VALUES (
    1,
    1,
    2,
    3,
    345,
    450000,
    230000
),(
    2,
    1,
    2,
    3,
    456,
    56700,
    25500
),(
    4,
    1,
    1,
    1,
    332,
    76899,
    5600
),(
    3,
    1,
    2,
    2,
    6540,
    6750000,
    578333
);