# Customers-Profiling-And-Segmentation-Analysis
![image](https://github.com/Chichi126/Customers-Profiling-And-Segmentation-Analysis/assets/140970592/426b733a-4ce3-4214-8250-6ebd50dd4415)

                                 **HAPPY READING** 

# Table of content

. Introduction

. Business Challenge

. Objectives

. Methodology

. Insights

. Conclusion



# Introduction

![image](https://github.com/Chichi126/Customers-Profiling-And-Segmentation-Analysis/assets/140970592/449be067-1fd0-4f53-87a8-b07c762d2e4c)


This dataset is one of the historical sales of supermarket company which has recorded in 3 different branches for 3 months data. 
Gaining knowledge about consumer behavior, product performance, and sales trends is the primary goal of this analysis, which can then be used to give better-informed information and help in the decision-making of the company. The dataset was gotten from [Kaggle](url)

The dataset contains 1000 rows and 19 columns 

Data Dictionary

1. Invoice ID: A unique identifier for each sales invoice or transaction.

2. Branch: The branch or location where the sale occurred, often represented as 'A,' 'B,' or 'C.'

3. City: The city where the branch is located, indicating the geographical location of the sale.

4. Customer_type:  Indicates whether the customer is a "Member" or "Normal," suggesting membership status.

5. Gender: The gender of the customer making the purchase, categorized as "Male" or "Female."

6. Product line: The category or type of product that was sold, such as "Health and beauty," "Electronic accessories," "Home and lifestyle," etc.

7. Unit price: The price of one unit of the product in the local currency.

8. Quantity: The quantity of the product purchased in that transaction.

9. Tax 5%: The amount of tax (5% of the total price) applied to the transaction

10. Total: The total price of the transaction, including both the product cost and tax.

11. Date: The date of the sale, typically in a format like "DD/MM/YYYY."

12. Month: The month when the sale occurred, derived from the 'Date' column.

13. Weekday: The day of the week when the sale took place, derived from the 'Date' column.

14. Time: The time of day when the sale occurred, typically in a format like "HH:MM."

15. Payment: The method of payment used for the transaction, such as "Ewallet," "Cash," or "Credit card."

16. cogs (Cost of Goods sold): the cost of the goods sold in the local currency.
     
18. Gross margin percentage: The gross margin percentage for the transaction, often standardized across all trades.

19. Gross income: The gross income generated from the transaction, representing the profit

20. Rating: A customer satisfaction rating is given on each transaction, usually on a scale from 1 to 10, where higher values indicate higher satisfaction.


# Business Problem

The organization seeks to leverage consumer profiling and segmentation methodologies as part of its business analysis initiatives to enhance marketing strategies and deliver personalized experiences to its clientele thereby fostering more meaningful and profitable customer relationships.

![image](https://github.com/Chichi126/Customers-Profiling-And-Segmentation-Analysis/assets/140970592/7e7446e7-1906-4074-9f53-0fda79825f65)


# Objectives

The primary objective of this project is to formulate a customer-centric strategy that enhances our understanding of customer preferences, particularly regarding payment methods. By discerning customer segments, preferred payment modes, and product lines with varying sales patterns, our marketing team can strategically tailor their efforts to engage with specific customer types and optimize product offerings for increased sales and customer satisfaction. 

The project seeks to accomplish the following goals:

1. Develop a comprehensive strategy for acquiring in-depth customer insights and segmenting them into distinct categories. 

2. Employ these methodologies to enhance the store's operational efficiency and draw a larger customer base that resonates   with and appreciates its product offerings.

![image](https://github.com/Chichi126/Customers-Profiling-And-Segmentation-Analysis/assets/140970592/2cd721d0-0583-410a-acc8-5801a92a283c)


# Methodology

The analysis methodology employed in this study encompasses a multi-faceted approach leveraging tools such as Excel, SQL (Structured Query Language), and Power BI (Business Intelligence). To begin, the dataset was initially imported into Excel, where preliminary data cleansing and exploration took place. 

  **Excel:** Excel's data manipulation features were instrumental in addressing missing values, however I did not encouter   any missing values or outliers.
  
 I Created and extracted a new columns from the Date column, namely Month and Day columns.

  ![image](https://github.com/Chichi126/Customers-Profiling-And-Segmentation-Analysis/assets/140970592/67e2cc37-0665-44ec-bf9d-0a26bea0ab2e) 
  
  **SQL:**  was harnessed to perform more complex data transformations and to extract relevant subsets of data from the original dataset. SQL queries enabled the aggregation of data, joining of multiple tables, and computation of key metrics critical to the analysis. 
  
  
  
  **Power BI:**  was utilized for advanced visualization and reporting, enabling the creation of insightful dashboards and interactive visuals to communicate findings effectively. The combination of these tools facilitated a comprehensive analysis, ensuring data integrity and yielding actionable insights to drive informed decision-making.

 ![image](https://github.com/Chichi126/Customers-Profiling-And-Segmentation-Analysis/assets/140970592/fc167e35-7888-4c9e-b313-11fa80eae413)
 


# Insights From the Dataset

1. **Customer Demographics:** 

     The dataset breaks down customer demographics by type and gender. Among members, there are 261 females and 240 males.      Among non-members (normal customers), there are 240 females and 259 males.

2. **Gender Distribution:** The dataset exhibits a near-even distribution of male and female customers, with each gender       accounting for approximately half of the customer base. This balance presents an opportunity to tailor marketing           strategies to both genders effectively.


3. **Product Sales by Category:**

    "Food and Beverages" and "Sports and Travel" are the highest-grossing categories, with revenues of $56,144.84 and          $55,122.83, respectively. "Health and Beauty" had the lowest revenue at $49,193.74, while "Home and Lifestyle,"            "Fashion   Accessories," and "Electronic Accessories" also performed well.


4. **Monthly Sales Revenue And Sales by Gender:**
    Sales performance varies by month, with January showing strong sales for both genders. However, male customers             recorded the highest sales in March, while February saw a dip in sales for both genders. Seasonal trends may impact        purchasing behavior.
    Female customers consistently showed strong sales in all three months, with the highest monthly revenue in January.
    - Male customers had lower sales in February but recovered in March, surpassing female sales for that month.
    - Seasonal or monthly variations may impact sales differently for each gender, suggesting the importance of tailored       marketing strategies for different times of the year


5. **Customer Loyalty Analysis:**

    Both male and female Members Customer_type have the same average rating of 6.94, indicating a similar level of             satisfaction among members regardless of gender.
  
    - Female Normal Customers have a slightly higher average rating than female members (6.99 vs. 6.94), suggesting that       normal female customers may be slightly more satisfied.
  
    - Male normal customers have the highest average rating (7.02), indicating a high level of satisfaction among male         customers who are not members

  
6. **Product Distribution Across Gender:**

    Female customers dominate the dataset, indicating more transactions by females. In specific product categories:
    - "Fashion accessories" are more popular among females.
  
    - Both genders show significant interest in "Food and beverages" and "Sports and travel."

    - "Health and beauty" products are more popular among males.
  
    - "Electronic accessories" and "Home and lifestyle" products are relatively evenly distributed between genders.


# Recommendation

1. **Targeted Marketing:** Implement gender-specific marketing campaigns to capitalize on the nearly equal distribution of male and female customers. Tailor promotions and product recommendations to cater to the preferences and needs of each gender segment.

2. **Seasonal Planning:** Recognize the influence of seasonal trends on sales and adjust inventory and marketing strategies accordingly. For instance, consider promoting seasonal products or offering discounts during slower months.

3. **Customer Loyalty Programs:** Leverage insights from customer loyalty analysis. Focus on retaining and satisfying male normal customers who have shown the highest average ratings. Implement loyalty programs or incentives to enhance customer loyalty across all segments.

4. **Product Category Optimization:** Given the strong performance of "Health and beauty" and "Electronic accessories," consider expanding product offerings or marketing efforts in these categories. Ensure adequate stock and promotional activities for these products.

5. **Branch Performance Enhancement:** Investigate the factors behind the varying performance of branches. Identify opportunities to improve branch operations, customer experience, and product availability to ensure consistent revenue growth across all locations.

6. **Continuous Monitoring:** Regularly monitor sales trends, customer ratings, and product preferences. Adapt strategies to changing customer behaviors and market dynamics to remain competitive and meet evolving customer expectations






