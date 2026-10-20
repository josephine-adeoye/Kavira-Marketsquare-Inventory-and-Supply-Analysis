# Kavira Marketsquare: Inventory and Supply Analysis



**Tools:** Microsoft Excel, MySQL 

**Focus:** Data cleaning, inventory analysis, sell-out performance, and business recommendations



## 1. Project Overview

Kavira Marketsquare is an African supermarket business headquartered in Lagos, Nigeria.

Following its January 2026 performance review, the Abuja branch was reported to be experiencing a decline in product sell-out performance. Slow-moving stock occupy storage and shelf space for longer than expected, creating inventory management challenges and potential financial risk.

This project analyses the branch’s inventory and sales records to identify products with batches that exceeded their defined sell-out thresholds, examine restocking patterns, and provide insights to support inventory management decisions.


**Stakeholder:** Head of Supply & Inventory, Abuja Branch.


## 2. Business Questions

The analysis focused on the following questions:

- Which products experienced slow sell-out performance in 2025?
- What was the stock value associated with batches that exceeded their sell-out thresholds?
- Were there similar products with different product IDs that recorded better sell-out performance?
- How long had the affected products been listed in inventory?
- Did any product show recurring slow-sales patterns across 2024 and 2025?
- How frequently were the affected products restocked in 2025?


 ## 3. Data and Methodology


  The project used four datasets:

- **Products:** Product names, categories, unit prices, and inventory introduction dates.
- **Restock:** Restocking dates, quantities, and branch information.
- **Inventory Stock:** Product batches, quantities, dates received, dates sold out, and stock values.
- **Sales Transactions:** Product sales and transaction dates.

The data covered 2024 to early 2026 and was simulated using real-world inventory and supply scenarios as a guide.

### Data Cleaning and Preparation

Data cleaning was performed in Excel before analysis in MySQL.

The preparation involved standardising data types, date formats, product and category spelling, and branch names; checking and removing confirmed duplicate records; and reviewing missing values and inconsistent numeric entries.

Unknown values were retained as NULL where the available data did not support a reliable replacement. The cleaned datasets were then used for SQL-based analysis.

### Analytical Approach

The analysis examined product-level sell-out performance, stock value, restocking frequency, product introduction dates, and recurring sales patterns.

A product was classified as *slow moving* if at least one batch exceeded its sell-out threshold during 2025. Thresholds were defined for this project using each product’s historical sell-out behaviour, with the median used as a measure of typical sell-out time.

This was a project-defined analytical rule, not an official company policy.


## 4. Key Findings

### Slow-moving products

- **27 distinct products** had at least one batch that exceeded its defined sell-out threshold during 2025.
- These products accounted for **31 batch records** that exceeded their thresholds.
- **27.27% of the products analysed** experienced slow sell-out performance at least once during 2025.
- Grains & Staples and Personal Care had the highest number of affected products, with four products in each category.

### Stock value

| Metric | Finding |
|---|---:|
| Total reported stock value of all products in 2025 | ₦157,310,937.50 |
| Stock value associated with batches exceeding their thresholds | ₦15,548,297.63 |
| Share of total stock value identified as slow moving | 9.88% |

The ₦15.55 million represents the stock value associated with batches that exceeded their defined sell-out thresholds. It does not necessarily represent a confirmed financial loss or the value of unsellable stock.

### Restocking patterns

The affected products were restocked between four and ten times during 2025. Tomatoes 1kg and Eggs (Crate) had the highest recorded restocking frequency, at ten times each.

Groundnut 200g, Rice 5kg, Salt 1kg, and Deodorant Roll-on, each had two batches that exceeded their thresholds, while other affected products had one each.

These patterns highlight products that may benefit from a closer review of replenishment decisions alongside sales and stock levels.

### Similar Product comparisons

Deodorant Roll-on, Foil Wrap, Plantain Chips 100g, Shaving Stick and Toothpaste each had records carrying the same product name but different product IDs, with these other records showing normal sell-out performance.

These comparisons provide a starting point for reviewing differences in product records, availability, branding and sales performance. Hence it is important that the equivalence of these products be validated before treating them as direct alternatives.

### Recurring patterns

Another set of five products showed similar periods of slow sales in both 2024 and 2025:

- Body Lotion 400ml
- Chin Chin 250g
- Cucumber 1kg
- Ice Cream 1L
- Tomatoes 1kg

The remaining 22 affected products showed different patterns between the two years, indicating that slow sell-out behavior did not follow the same pattern for every product in 2024 and 2025.


## 5. Business Implications and Recommendations

The findings identify products and batches that require closer inventory review to provide a basis for more informed supply planning.

Recommended actions include:

1. **Review affected products:** Further examine the 27 products using their batch histories, sales quantities, and current stock levels.
2. **Assess replenishment decisions:** Compare restocking quantities and timing against sales and available stock before adjusting reorder decisions.
3. **Validate similar product comparisons:** Confirm whether the five products sharing the same name but different IDs have equivalent specifications and can be compared fairly.
4. **Investigate demand-related factors:** More data should be provided to examine pricing, promotions, product availability, and customer demand to better understand the possible reasons for slow sell-out performance of identified products.
5. **Monitor sell-out trends:** Track monthly performance and compare it with earlier periods to determine whether slow movement existed in earlier years.

These actions can help the business distinguish between recurring demand issues and temporary sales patterns before making permanent changes in supply and inventory.


## 6. Assumptions and Limitations

- The sell-out thresholds were defined for this analysis because no official company threshold or relevant shelf-life policy was available.
- Each product’s threshold was based on its own historical sell-out behaviour. The median was used as the typical sell-out time because extreme values could distort the mean.
- A product was classified as affected if at least one batch exceeded its threshold during 2025.
- The threshold analysis focused on batches received between 1 January and 31 December 2025. Two batches had sell-out dates in 2026.
- Same-name products with different product IDs were treated as separate records. Their status as equivalent products is yet to be confirmed.
- Missing sales transactions were not automatically interpreted as zero sales, since the absence of a transaction record does not prove that no sales occurred.
- Unit prices were assumed to remain constant throughout the year.
- Slow sell-out performance does not by itself establish overstocking, financial loss, or the sole cause of the reported decline in branch performance.

## 7. Conclusion

The analysis identified 27 products with at least one batch that exceeded its defined sell-out threshold during 2025. The associated stock value was ₦15.55 million, representing 9.88% of the reported total stock value for the year 2025.

The findings highlight specific products and recurring patterns that deserve attention in inventory and supply planning. Reviewing replenishment decisions, validating same-name product comparisons, and investigating demand-related factors can help Kavira Marketsquare make better-informed decisions about stock management and sell-out performance.
