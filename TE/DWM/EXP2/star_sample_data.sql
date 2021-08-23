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

INSERT INTO `item` (
    brand,
    name, 
    category,
    price,
    discounted_price
) VALUES (
    "Levi's",
    "501 Jeans",
    "Clothing",
    1999,
    1799
),(
    "Society",
    "Tea powder",
    "Food",
    30,
    30
),(
    "Lenovo",
    "Ideapad 330S-15IKB",
    "Electronics",
    23899,
    20699
),(
    "Logitech",
    "MK225 Silent Mouse",
    "Electronics",
    1999,
    1799
),(
    "TCL",
    "32 inch HD ready TV",
    "Electronics",
    12999,
    9999
);

INSERT INTO `location` (
    country,
    state,
    city,
    district
) VALUES (
    "India",
    "Maharashtra",
    "Mumbai",
    "Mumbai Suburban"
),(
    "India",
    "Maharashtra",
    "Nagpur",
    "Ramtek"
),(
    "India",
    "Goa",
    "Mapusa",
    "Bardez"
),(
    "India",
    "Goa",
    "Tiswadi",
    "Panaji"
),(
    "India",
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