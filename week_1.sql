
1. What is the total amount each customer spent at the restaurant?
SELECT 
    customer_id, SUM(price) as "total amount spent"
FROM
    sales
        JOIN
    menu ON sales.product_id = menu.product_id
GROUP BY customer_id;
  
 use diner;
 
 
  
2. How many days has each customer visited the restaurant?
SELECT 
    CUSTOMER_ID, COUNT(DISTINCT (order_date)) AS 'DAYS VISITED'
FROM
    sales
GROUP BY customer_id;


3. What was the first item from the menu purchased by each customer?
SELECT 
    CUSTOMER_ID, MIN(ORDER_DATE) as "ORDER DATE", PRODUCT_NAME
FROM
    SALES
        JOIN
    MENU ON SALES.PRODUCT_ID = MENU.PRODUCT_ID
WHERE
    customer_id IN ('A' , 'B', 'C')
GROUP BY CUSTOMER_ID

4. What is the most purchased item on the menu and how many times was it purchased by all customers?
SELECT 
    M.PRODUCT_NAME, COUNT(S.PRODUCT_ID) COUNT
FROM
    SALES S
        JOIN
    MENU M ON S.PRODUCT_ID = M.PRODUCT_ID
GROUP BY PRODUCT_NAME
ORDER BY COUNT DESC
LIMIT 1;


5. 
