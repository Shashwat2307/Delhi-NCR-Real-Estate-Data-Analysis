# 🏠 Delhi-NCR Real Estate Market Analyzer

Welcome to the Delhi-NCR Real Estate Market Analyzer! This project provides a robust, end-to-end solution for understanding the property landscape in the Delhi-National Capital Region. From raw web data to interactive insights, we've built a comprehensive pipeline using a blend of web scraping, data engineering, geospatial analysis, and powerful visualization.

Our aim? To peel back the layers of the real estate market, revealing average prices, property distribution, and crucial proximity to essential amenities like metro stations, hospitals, and schools.

## Project Journey: How We Built It 🛠️

Follow the steps below to understand the flow of this project:

### Step 1: Data Harvesting 🕸️

We kicked off by gathering the core data:

* **Property Listings:** Our primary real estate property listings were meticulously extracted from **MagicBricks.com**. A custom Python web scraping script (`Web_Scraping.ipynb`), powered by `Selenium` for navigation and `BeautifulSoup` for parsing, systematically collected details like property names, prices, locations, features (bedrooms, area, status), and transaction types.
* **Amenity Data:** Essential data for metro stations, hospitals, and schools was concurrently sourced from official government websites, ensuring accuracy and reliability.

### Step 2: Data Sculpting & Refinement ✨

Raw data needs a good polish! This phase focused on shaping our datasets for analysis:

* **Real Estate Data:** The raw web-scraped data underwent rigorous cleaning and structuring. This involved hands-on work in **MS Excel and Power Query** to address inconsistencies, fill missing values, and standardize formats, making the data ready for its next transformation.
* **Amenity Data:** Similarly, the metro, school, and hospital datasets were refined. We focused on isolating and cleaning only the most relevant columns crucial for our upcoming geographical analyses.

### Step 3: Geographic Intelligence - Pinpointing & Proximity 📍

This is where our data truly came alive with location-based insights:

* **Geocoding Properties:** Our main web-scraped dataset was fed into a Python geocoding script (`Geo_Coding_Location.ipynb`). Leveraging the **LocationIQ Geocoding API**, this script transformed descriptive addresses into precise X (longitude) and Y (latitude) coordinates. These coordinates are the bedrock for all subsequent spatial analysis.
* **Mapping Closest Amenities:** With coordinates in hand, the `Amenities_Location_Maping.ipynb` Python script took over. It intelligently identified and mapped the **closest metro stations, schools, and hospitals** to each real estate property, linking them via unique IDs.
* **Calculating Distances to Amenities:** The `Amenities_Distance_Calculation.ipynb` script then computed the exact **Euclidean distances** from every property to its nearest metro station, hospital, and school. These distances, initially raw, were converted into intuitive kilometers, providing a clear understanding of convenience and accessibility.

### Step 4: Database Power & Initial Discoveries 📊

Once the data was rich with geospatial information, it was time to store and query:

* **SQL Database:** The processed and enriched datasets were seamlessly loaded into a SQL database.
* **Early Insights:** With the data organized, basic analytical queries (`Queries_Real_Estate.sql`) were executed. These queries provided foundational insights, helping us to quickly grasp:
    * The top properties by price per square foot.
    * Average price per square foot across different cities.
    * Properties alongside their nearest metro stations and hospitals.
    * A view of properties with their three closest schools.

### Step 5: Interactive Storytelling with Power BI 📈

The culmination of our efforts is an **interactive and comprehensive Power BI dashboard**. This dashboard isn't just a collection of charts; it's a dynamic tool that allows users to explore various facets of the Delhi-NCR real estate market with ease. Dive in to visualize:

* **Overall Market Trends:** Get a high-level view of key statistics and property distribution.
* **Location-Based Analysis:** Understand property concentration and proximity to essential amenities in different areas.
* **Detailed Property Insights:** Filter and analyze properties based on numerous attributes like price ranges, number of bedrooms, transaction type, and more.

---
