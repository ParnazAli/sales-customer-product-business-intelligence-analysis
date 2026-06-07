WITH category_sales AS (
    SELECT
        p.category,
        SUM(f.sales_amount) AS total_sales,
        COUNT(DISTINCT p.product_key) AS total_products
    FROM gold.fact_sales f
    LEFT JOIN gold.dim_products p
        ON p.product_key = f.product_key
    GROUP BY p.category
)
SELECT
    category,
    total_sales,
    total_products,
    SUM(total_sales) OVER () AS overall_sales,
    SUM(total_products) OVER () AS overall_products,
    ROUND((CAST(total_sales AS FLOAT) / SUM(total_sales) OVER ()) * 100, 2) AS revenue_percentage,
    ROUND((CAST(total_products AS FLOAT) / SUM(total_products) OVER ()) * 100, 2) AS catalog_percentage,
    ROUND(
        (CAST(total_sales AS FLOAT) / SUM(total_sales) OVER ()) /
        (CAST(total_products AS FLOAT) / SUM(total_products) OVER ()), 2
    ) AS revenue_efficiency_ratio
FROM category_sales
ORDER BY revenue_efficiency_ratio DESC;
