--RESPONSE TIME IMPACT ANALYSIS-Analyze how recruiter response time affects hiring success

-- Step 1️⃣ Bucket recruiter response times

WITH ResponseBuckets AS (
    SELECT
        CASE
            WHEN a.resp_time_hrs <= 2 THEN '0–2 hrs'
            WHEN a.resp_time_hrs <= 4 THEN '2–4 hrs'
            WHEN a.resp_time_hrs <= 6 THEN '4–6 hrs'
            WHEN a.resp_time_hrs <= 8 THEN '6–8 hrs'
            ELSE '>8 hrs'
        END AS response_bucket,

        a.final_status

    FROM ai_scores s
    INNER JOIN applications a
        ON s.app_id = a.app_id

    WHERE s.ai_goodness_score > 90
      AND a.resp_time_hrs IS NOT NULL
      AND a.final_status IN ('Hired','Rejected','Lost to Competitor')
)

-- Step 2️⃣ Calculate hiring success by response time bucket

SELECT
    response_bucket,
    COUNT(*) AS total_candidates,

    SUM(CASE WHEN final_status = 'Hired' THEN 1 ELSE 0 END) AS total_hired,

    ROUND(
        100.0 * SUM(CASE WHEN final_status = 'Hired' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS hire_rate_percentage

FROM ResponseBuckets
GROUP BY response_bucket
ORDER BY
    CASE response_bucket
        WHEN '0–2 hrs' THEN 1
        WHEN '2–4 hrs' THEN 2
        WHEN '4–6 hrs' THEN 3
        WHEN '6–8 hrs' THEN 4
        ELSE 5
    END;