# Kavira-Inventory-and-Supply-Analysis-(Ongoing)

## 1. Introduction

This project explores inventory data from an African supermarket to understand overall product sell-out performance.

The end goal is to use available data to clearly identify slow moving or unsold products, uncover possible factors behind their performance, and support better-informed inventory and restocking decisions.

## 2. Problem Statement

Kavira Marketsquare is an African supermarket headquartered in Lagos. In line with company procedure, an annual review of the Abuja branch’s performance was conducted in January, 2026. 

The review showed a decline in the rate at which products sold out at the branch, which was beginning to affect overall stock performance. 

Slow-moving products now occupy storage and shelf space, increasing the risk of losses as they remain in stock longer and eventually lose value. 

Kavira Marketsquare needs to identify the products responsible for this decline and understand the likely factors driving it, in order to support better-informed decisions and improve overall stock performance.

### Data Questions
- Which products were slow-moving at the Abuja branch in 2025?
- What was the stock value of batches that exceeded their sell-out threshold in 2025?
- Did these slow-moving products have similar or alternative products with faster sell-out times?
- How long have the slow-moving products been introduced into the store?
- Do products that experienced slower sell-out performance in 2025 show recurring sales patterns at certain times of the year?
- How often were products that experienced slower sell-out performance restocked in 2025?

### KPIs
- Total products listed and sold by Kavira
- Number of products that experienced slow movement in 2025
- Total stock value for 2025
- Monetary value of batches with slow movement in 2025


## 3. Stakeholder: Head of Supply & Inventory – Abuja Branch
Responsibility: Inventory management, supply planning and stock performance across Kavira Marketsquare.  


## 4. Project Objective
This analysis aims to help the stakeholder identify the products with slow or zero sell out rate as well as the factors driving this in order to improve sell out performance.

### Assumptions
- The rule for "slow product" is a working assumption, not a Kavira policy as there is no available data on shelf-life limits and related information.
- Each product's threshold comes from its own data history. It is the point where a sell-out time goes clearly beyond that product's normal range.
- The threshold strictly worked with products purchased within Jan 1,2025 and Dec 31,2025 with only two batches having date sold out in 2026.
- The middle value (median) was used as the typical sell-out time because outlier values would make average look worse.
- A product is considered to have experienced slow-movement if it had at least one slow batch during 2025.
- The very slow batches with outlier values were left unchanged since nothing in the data shows they are mistakes.
- It was assumed that the unit price of products was constant throughout the year.
- Similar products are products with the same Product Name but different Product IDs. Products with different names, sizes, or specifications are not considered similar products.
- Missing quantity sold were not treated as zero sales because the absence of a transaction record does not confirm that no sales occurred.


## 5. Dataset Overview 
The cleaned dataset contains: 
- transactions,inventory,restock and products datasets each as unique stand alones
- an overall of 10,000+ inventory and supply records from 2024 to early part of 2026

### Data Source
The Kavira dataset is a simulated dataset, using real world supply and inventory context as a guideline.


## 6. Data Cleaning & Preparation










