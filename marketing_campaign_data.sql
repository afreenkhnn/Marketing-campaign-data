USE MARKETING;

SHOW TABLES;

SELECT *
FROM MARKETING_CAMPAIGN_DATA; 

ALTER TABLE MARKETING_CAMPAIGN_DATA
MODIFY COST DECIMAL(15,2);

ALTER TABLE MARKETING_CAMPAIGN_DATA
MODIFY Revenue DECIMAL (15,2); 

SET SQL_SAFE_UPDATES = 0;

UPDATE MARKETING_CAMPAIGN_DATA
SET CPL = REPLACE(CPL, '?', '');

SET SQL_SAFE_UPDATES = 1;

 SELECT CPL
FROM MARKETING_CAMPAIGN_DATA
LIMIT 10;

ALTER TABLE MARKETING_CAMPAIGN_DATA
MODIFY CPL DOUBLE; 

describe MARKETING_CAMPAIGN_DATA;

SELECT SUM(Revenue) AS Total_Revenue
FROM marketing_campaign_data;

select platform,count(*) Campaign_count
from marketing_campaign_data
group by Platform
order by campaign_count desc
limit 1;

SELECT Platform, SUM(Revenue) AS Total_Revenue
FROM marketing_campaign_data
GROUP BY Platform
ORDER BY Total_Revenue DESC
LIMIT 1;

select Platform, sum( enrollments) as total_enrollments
from marketing_campaign_data
group  by Platform
order by Total_enrollments desc
limit 1;

SELECT Platform, SUM(Leads) AS Total_Leads
FROM marketing_campaign_data
GROUP BY Platform
ORDER BY Total_Leads DESC
LIMIT 1;

SELECT Platform,AVG(CTR) AS Avg_CTR
FROM marketing_campaign_data
GROUP BY Platform
ORDER BY Avg_CTR DESC
LIMIT 1;
 
 SELECT CampaignName,SUM(Revenue) AS total_Revenue
FROM marketing_campaign_data
GROUP BY CampaignName
ORDER BY total_Revenue DESC
LIMIT 1;

SELECT Platform,SUM(Enrollments) / SUM(Leads) * 100 AS Conversion_Rate
FROM marketing_campaign_data
GROUP BY Platform
ORDER BY Conversion_Rate DESC
LIMIT 1;

SELECT Platform,SUM(Cost) AS Total_Cost
FROM marketing_campaign_data
GROUP BY Platform
ORDER BY Total_Cost DESC
LIMIT 1;

SELECT CampaignName,MAX(ROI) AS Highest_ROI
FROM marketing_campaign_data
GROUP BY CampaignName
ORDER BY Highest_ROI DESC
LIMIT 1; 

SELECT CampaignName,AVG(CPL) AS Avg_CPL
FROM marketing_campaign_data
GROUP BY CampaignName
ORDER BY Avg_CPL ASC
LIMIT 1;

SELECT  Platform,
SUM(Applications) AS Total_Applications
FROM marketing_campaign_data
GROUP BY Platform
ORDER BY Total_Applications DESC
LIMIT 1;