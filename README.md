
# Database assignment

The e-commerce system connects sellers, customers, products, and orders, enabling sellers to add products and customers to place orders seamlessly.


## ERD Image
![ERD Image](https://raw.githubusercontent.com/Laaaibah/Database/main/erd.png)

### ERD Explanation

### Sellers
- **Attributes:** 
  - Seller ID
  - Seller Name
  - Seller Email
  - Contact Number
  - Store Description
- **Relationship:** Many-to-Many (M:N) with the Product entity. A seller can have multiple products, and a product can be offered by multiple sellers.

### Product
- **Attributes:** 
  - Product ID
  - Price
  - Description
  - Category Name
  - StockQuantity
- **Relationship:** 
  - Many-to-Many (M:N) with Sellers.
  - Many-to-Many (M:N) with OrderItems. A product can appear in many orders (through OrderItems), and each order can contain multiple products.
  - One-to-Many (1:M) with the Cart item. Each product can be included in multiple cart items. Conversely, each cart item refers to only one product.
  - One-to-Many (1:M) with the Reviews. Each product can have multiple reviews written by different customers.Conversely, each review pertains to only one product.

### Customer
- **Attributes:** 
  - Customer ID
  - Email
  - Password
  - Name
- **Relationship:**  
 - One-to-Many (1:M) with the Order. A single customer can place multiple orders. Each order is associated with only one customer.
  - Many-to-one (M:1) with the Reviews. A customer can write multiple reviews for different products, but each review is linked to only one customer.
  - One-to-One (1:1) with Shopping cart. Each customer has one unique shopping cart that they use to manage items they want to purchase.

### Order
- **Attributes:** 
  - Order ID
  - Order Number
  - Creation Time
  - Total Amount
- **Relationship:** 
  - Many-to-One (M:1) with Customers. Each order is placed by one customer, but a single customer can place multiple orders.
  - One-to-Many (1:M) with OrderItems. An order can contain multiple order items, but each order item belongs to only one order.
  -One-to-One (1:1) with Payment. Each order has exactly one payment associated with it, and each payment is linked to only one order.

### OrderItem
- **Attributes:** 
  - OrderItem ID
  - Quantity
  - TrackingID
- **Relationship:** 
  -  Many-to-One (M:1) with Order. Each order item is associated with one specific order, but a single order can contain multiple order items.
  - Many-to-Many (M:N) with Product. Each order item can correspond to multiple products, and each product can appear in multiple order items.

### ShoppingCart
- **Attributes:** 
  - Cart ID
  - Last Updated
- **Relationship:**
 - One-to-Many (1:M) with CartItems. Each shopping cart can contain multiple cart items, but each cart item belongs to one specific shopping cart.
 - One-to-One (1:1) with Customer. Each shopping cart is associated with exactly one customer, and each customer can have only one active shopping cart.

### CartItem
- **Attributes:** 
  - CartItem ID
  - Quantity
  - AddedTimestamp
- **Relationship:** 
- Many-to-One (M:1) with ShoppingCart. Multiple cart items can belong to a single shopping cart, indicating that each item is part of one specific cart.
- Many-to-One (M:1) with Product. Each cart item is linked to one specific product, but a product can be added to multiple cart items across different shopping carts.
 
### Address
- **Attributes:** 
  - Address ID
  - City
  - State
  - Country
  - ZIP
  - IsBillingAddress
  - IsShippingAddress
- **Relationship:**
 - One-to-One (1:1) with Customers. Each customer can have one primary address associated with them, which may serve as either a billing or shipping address.


### Review
- **Attributes:** 
  - Review ID
  - Review Text
  - Rating
- **Relationship:** 
  - Many-to-One (M:1) with Product. Multiple reviews can be written for a single product, but each review is associated with one specific product.
  - One-to-Many (1:M) with Customers. A single customer can write multiple reviews, but each review is written by one specific customer.

### Payment
- **Attributes:** 
  - Payment ID
- **Relationship:** 
- One-to-One (1:1) with Orders. Each order can have one corresponding payment entry, indicating a direct connection between orders and their payments.

### Inventory
- **Attributes:** 
  - Inventory ID
  - UnitCost
  - ReorderThreshold
  - LastStockUpdate
  - QuantityInStock
- **Relationship:** 
- One-to-One (1:1) with Product. Each product has a single inventory entry associated with it, providing details about stock levels and costs.

## Questions Explanation
### Q3 (a)
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q3a.png)

**Explanation:** This query calculates the total sales amount (TotalAmount) for each customer (CustomerID) by summing up all orders made by that customer. The JOIN ensures that the query retrieves related records from both the Customers and Orders tables. Grouping by CustomerID gives the total sales per customer.

### Q3 (b)
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q3b.png)

**Explanation:** This query lists products that are low in stock by checking the QuantityInStock from the Inventory table. The JOIN connects the Products and Inventory tables to display the product's name and quantity in stock. The condition i.QuantityInStock < 30 filters for products with stock levels below 30.

### Q3 (c)
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q3c.png)

**Explanation:** This query counts the number of orders placed in the last month by using the DATEADD function to calculate the date one month prior to the current date (GETDATE()). It filters the Orders table based on the CreationTime to count only orders placed in that time frame. 

### Q3 (d)
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q3d.png)

**Explanation:** This query calculates the average rating for each product by joining the Products and Reviews tables. The AVG function computes the average of all ratings for each product. The result is grouped by the product's ID and name. 

### Q4
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q4.png)

**Explanation:** This query retrieves the top 5 customers based on their total amount spent on orders. It joins the Customers and Orders tables, grouping results by customer ID and name to calculate the sum of the total amount.

### Q5
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q5.png)

**Explanation:** This query calculates the average rating for each product by joining the Products and Reviews tables. The results are grouped by product ID and name, and sorted in descending order of average rating.

**Challenges:** Handling products with no reviews, which could affect the average calculation.

**Solution:** Used a LEFT JOIN instead of an INNER JOIN to include products with no reviews and set average rating to NULL.


### Q6
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q6.png)

**Explanation:** This query identifies customers who made multiple purchases on the same day by grouping orders by customer ID and purchase date.

**Challenges:** Ensuring accurate date casting to group by the correct day.

**Solution:** Used the CAST function to convert timestamps to dates for proper grouping.


### Q7
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q7.png)

This query aggregates total revenue generated by each product category by summing the prices of products within each category.

### Q8
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q8.png)

**Explanation:** This query retrieves customers who have not written any reviews by performing a LEFT JOIN between Customers and Reviews.

**Challenges:** Correctly filtering out customers who have no corresponding review entries.

Used the condition WHERE r.CustomerID IS NULL to capture only customers without reviews.


### Q9
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q9.png)

**Explanation:** This query retrieves products that have stock quantities lower than the average stock across all products. It employs a subquery to calculate the average stock quantity, filtering the main query results based on this value.




### Q10
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q10.png)

**Explanation:** This query counts the total number of orders placed by each customer, showing only those with more than five orders. The results are grouped by customer ID and name, ensuring that only qualifying customers appear in the output.

### Q11
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q11.png)

**Explanation:** This query retrieves the three most recent orders made by a specific customer (CustomerID = 1). The results are sorted by creation time in descending order, displaying the latest orders at the top.

### Q12
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q12.png)

**Explanation:** TThis query identifies customers who have ordered from at least two distinct sellers. It counts the number of unique seller IDs for each customer and filters results to include only those with two or more sellers.

**Challenges:** Handling multiple joins accurately to count distinct seller IDs.

 Used the DISTINCT keyword to ensure accurate counting of unique sellers.

### Q13
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q13.png)

**Explanation:** This query retrieves all orders placed by customers within the last 30 days. It joins the Customers and Orders tables, filtering based on the creation time of the orders to capture the most recent transactions.

**Challenges:** Correctly applying the date filter for the current date.

**Solution:** Utilized DATEADD function to accurately calculate the date range.

### Q14
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q14.png)
 
**Explanation:** This query identifies customers who have ordered products from all available categories. It counts distinct categories for each customer and ensures the count matches the total number of distinct categories in the Products table.

### Q15
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q15.png)

**Explanation:** This query aggregates the total quantity of products sold by each seller.

### Q16
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q16.png)

**Explanation:** This query identifies the top 5 products based on total sales over the past month. It aggregates sales data from the OrderItems table and associates it with product details from the Products table. The JOIN operation ensures that only relevant records are considered, while the WHERE clause restricts the results to the specified date range. The use of SUM aggregates the quantities sold, allowing for effective ranking.

### Q17
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q17.png)

**Explanation:** This query retrieves the most recent 5 orders along with detailed customer information. It connects the Orders table with the Customers and OrderItems tables to present a comprehensive view of orders, including customer names and quantities of items ordered. The ORDER BY clause ensures that the results are sorted by order creation time in descending order, showcasing the latest orders first.

### Q18
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q18.png)

**Explanation:** This query identifies customers who have ordered from every product category available in the database. It joins the Customers, Orders, OrderItems, and Products tables to gather comprehensive data. By counting the distinct categories for each customer, it compares that count to the total number of categories available.

### Q19
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q19.png)

**Explanation:** This query finds products without reviews that are in stock. It uses left joins to include all products and filters for those with no reviews and positive stock.

### Q20
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q20.png)

**Explanation:** This query identifies the top 3 products based on their average customer ratings. It aggregates review data from the Reviews table while maintaining product details. The STRING_AGG function consolidates all review texts for the products into a single string, providing an overview of customer feedback. By calculating the average rating, the query highlights products that are performing well, both in sales and customer satisfaction.

**Challenges:** Ensuring accurate calculation of average ratings while also managing multiple reviews for each product.

**Solution:**I used the AVG function alongside STRING_AGG to calculate the average rating and compile review texts simultaneously, ensuring a comprehensive output.

### Q21
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q21.png)

### Q22
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q22.png)

**Explanation:** This query calculates the total number of products and the total revenue generated for each product category. By joining the Products and OrderItems tables, it aggregates the quantity sold and multiplies it by the product price to calculate total revenue.

**Challenges:** Ensuring accurate revenue calculations even for categories without any sales.

**Solution:** I used COALESCE to handle cases where there were no sales for a category, returning zero instead of null, which ensured accurate reporting.

### Q23
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q23.png)

**Explanation:** This query focuses on products in the "Electronics" category, calculating their order quantities and total revenue. By joining the Products and OrderItems tables, it sums the quantity and revenue generated from sales. The use of COALESCE ensures that even products without sales show zero quantities and revenue, enhancing the clarity of the results

### Q24
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q24.png)

**Explanation:** This query counts total products sold per category, filtering for categories with more than one sale. It highlights popular product categories effectively.

### Q25
![Image](https://raw.githubusercontent.com/Laaaibah/DB-/main/Question%20snippets/q25.png)

**Explanation:** This query retrieves customers who have placed more than five orders. It counts the number of orders for each customer, grouping by CustomerID and Name. The HAVING clause filters results to include only those with more than five orders, and the results are sorted in descending order of total orders.

