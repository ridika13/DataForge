COPY marketing.marketing_qualified_leads_staging
FROM 'C:/Users/hp/Downloads/Olist-end-to-end-data-analytics-main/DataForge/02_data_sources/olist_marketing/olist_marketing_qualified_leads_dataset.csv'
DELIMITER ','
CSV HEADER
QUOTE '"'
ESCAPE '"';

COPY marketing.marketing_closed_deals_staging
FROM 'C:/Users/hp/Downloads/Olist-end-to-end-data-analytics-main/DataForge/02_data_sources/olist_marketing/olist_closed_deals_dataset.csv'
DELIMITER ','
CSV HEADER
QUOTE '"'
ESCAPE '"';