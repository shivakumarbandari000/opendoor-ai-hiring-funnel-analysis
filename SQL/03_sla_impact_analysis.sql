--SLA IMPACT ANALYSIS-Determine how recruiter response time affects hiring success

-- Step 1️⃣ Filter high-quality AI matches (score > 90)

WITH HighScoreCandidates AS (
    SELECT
        a.app_id,
        a.sla_status,
        a.final_status
    FROM ai_scores s
    INNER JOIN applications a
        ON s.app_id = a.app_id
    WHERE s.ai_goodness_score > 90
      AND a.final_status IN ('Hired','Rejected','Lost to Competitor')
      AND a.sla_status IN ('Met','Breached')
)

-- Step 2️⃣ Compare hiring outcomes by SLA status

SELECT
    sla_status,
    COUNT(*) AS total_candidates,

    SUM(CASE WHEN final_status = 'Hired' THEN 1 ELSE 0 END) AS total_hired,

    ROUND(
        100.0 * SUM(CASE WHEN final_status = 'Hired' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS hire_rate_percentage,

    ROUND(
        100.0 * SUM(CASE WHEN final_status = 'Lost to Competitor' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS lost_to_competitor_rate,

    ROUND(
        100.0 * SUM(CASE WHEN final_status = 'Rejected' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS rejection_rate

FROM HighScoreCandidates
GROUP BY sla_status;