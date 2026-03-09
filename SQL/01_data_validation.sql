-- DATA VALIDATION & CLEANING - Ensure dataset integrity before performing analysis

-- 1️ Check for duplicate application IDs

SELECT app_id, COUNT(*) AS duplicate_count
FROM applications
GROUP BY app_id
HAVING COUNT(*) > 1;



-- 2️ Remove duplicate records (keep most recent application)

WITH CTE AS (
    SELECT 
        *,
        ROW_NUMBER() OVER (
            PARTITION BY app_id 
            ORDER BY applied_at DESC
        ) AS rn
    FROM applications
)
DELETE FROM CTE
WHERE rn > 1;



-- 3️ Timestamp Sequence Validation
-- Ensure logical event order:
-- Apply → AI Interview Start → AI Interview Finish → Recruiter View

SELECT *
FROM applications
WHERE 
    (ai_int_start IS NOT NULL AND ai_int_start <= applied_at)
    OR
    (ai_int_finish IS NOT NULL AND ai_int_finish <= ai_int_start)
    OR
    (recruiter_view IS NOT NULL AND recruiter_view <= ai_int_finish);



-- 4️ Response Time Validation
-- Compare stored response time with recalculated value

SELECT
    app_id,
    resp_time_hrs,
    DATEDIFF(MINUTE, ai_int_finish, recruiter_view) / 60.0 AS recalculated_resp_time
FROM applications
WHERE recruiter_view IS NOT NULL
  AND ai_int_finish IS NOT NULL
  AND ABS(
        (DATEDIFF(MINUTE, ai_int_finish, recruiter_view) / 60.0)
        - resp_time_hrs
      ) > 0.05;



-- 5️ Null Logic Consistency
-- Recruiter should not view candidate before AI interview finishes

SELECT *
FROM applications
WHERE ai_int_finish IS NULL
  AND recruiter_view IS NOT NULL;



-- 6️ Null Logic Consistency
-- SLA status should not exist when recruiter_view is NULL

SELECT *
FROM applications
WHERE recruiter_view IS NULL
  AND sla_status IS NOT NULL;



-- 7️ Human Rating Range Validation
-- Ratings must be between 1 and 10

SELECT *
FROM ai_scores
WHERE human_rating < 1
   OR human_rating > 10;