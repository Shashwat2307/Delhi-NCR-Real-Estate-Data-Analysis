
-- Top 10 properties by rate per sqft
SELECT property, location, Price, Rate_per_sqft
FROM delhi_realestate
ORDER BY Rate_per_sqft DESC
LIMIT 25;

-- Average price per square foot by city
SELECT city, AVG(Rate_per_sqft) AS avg_rate
FROM delhi_realestate
GROUP BY city
ORDER BY avg_rate DESC
LIMIT 25;

-- Property with nearest metro station name
SELECT r.property, r.location, m.Station AS nearest_metro
FROM delhi_realestate r
JOIN metrostations_data m ON r.nearest_metro_1 = m.m_id
LIMIT 25;

-- Properties and nearest hospital name
SELECT r.property, r.location, h.Name AS nearest_hospital
FROM delhi_realestate r
JOIN hospitals_data h ON r.nearest_hospital_1 = h.h_id
LIMIT 25;

-- Property and 3 nearest schools
SELECT r.property, r.location, s1.Name AS school_1, s2.Name AS school_2, s3.Name AS school_3
FROM delhi_realestate r
JOIN schools_data s1 ON r.nearest_school_1 = s1.s_id
JOIN schools_data s2 ON r.nearest_school_2 = s2.s_id
JOIN schools_data s3 ON r.nearest_school_3 = s3.s_id
LIMIT 25;

