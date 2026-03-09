 -- AI MODEL VALIDATION - Verify whether AI Goodness Score predicts hiring success

-- Step 1️⃣ Create AI score buckets

WITH ScoreBuckets AS (
    SELECT
        a.app_id,
        a.final_status,
        
        CASE 
            WHEN s.ai_goodness_score >= 90 THEN '90+'
            WHEN s.ai_goodness_score >= 70 THEN '70-89'
            WHEN s.ai_goodness_score >= 50 THEN '50-69'
            ELSE '<50'
        END AS score_bucket
        
    FROM ai_scores s
    INNER JOIN applications a
        ON s.app_id = a.app_id
    WHERE a.final_status IN ('Hired','Rejected','Lost to Competitor')
)

-- Step 2️⃣ Calculate hiring outcomes by score bucket

SELECT
    score_bucket,
    COUNT(*) AS total_candidates,

    -- Hire Rate
    ROUND(
        100.0 * SUM(CASE WHEN final_status = 'Hired' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS hire_rate,

    -- Lost to Competitor Rate
    ROUND(
        100.0 * SUM(CASE WHEN final_status = 'Lost to Competitor' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS lost_to_competitor_rate,

    -- Rejection Rate
    ROUND(
        100.0 * SUM(CASE WHEN final_status = 'Rejected' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS rejection_rate

FROM ScoreBuckets
GROUP BY score_bucket
ORDER BY
    CASE score_bucket
        WHEN '90+' THEN 1
        WHEN '70-89' THEN 2
        WHEN '50-69' THEN 3
        ELSE 4
    END;