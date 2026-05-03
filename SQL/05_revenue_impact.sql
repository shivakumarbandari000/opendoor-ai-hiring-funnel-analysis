--REVENUE IMPACT ANALYSIS-Estimate potential revenue recoverable by reducing SLA breaches

-- Step 1️⃣ Identify high-quality candidates lost due to recruiter delay

SELECT
    COUNT(*) AS potential_additional_hires,

    -- Estimated commission revenue recoverable
    SUM(0.07 * j.annual_ctc) AS recoverable_revenue,

    -- Average commission per hire
    ROUND(AVG(0.07 * j.annual_ctc), 2) AS avg_revenue_per_hire

FROM applications a
INNER JOIN ai_scores s
    ON a.app_id = s.app_id
INNER JOIN jobs j
    ON a.job_id = j.job_id

WHERE s.ai_goodness_score > 90
  AND a.final_status = 'Lost to Competitor'
  AND a.sla_status = 'Breached';
