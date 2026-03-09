# 🚀 Opendoor AI Hiring Funnel Analysis

### Why Do 30% of Perfect AI Matches Fail to Convert?

An investigation into conversion bottlenecks in Opendoor AI’s **24-hour hiring promise**.

This project analyzes hiring funnel data to identify why **high-quality candidates (AI Score > 90)** fail to convert into hires.

The analysis reveals that the primary bottleneck is **recruiter response latency**, not AI accuracy.
## 📖 Project Overview

At Opendoor AI, hiring speed is the competitive advantage. The platform promises companies **high-speed hiring within 24 hours**, powered by AI candidate matching.

However, internal data revealed a concerning trend:

> Nearly **30% of high-quality candidates (AI Score > 90)** never convert into hires.

This project investigates whether the problem originates from:

- AI model accuracy
- recruiter response delays
- market competition

The goal is to identify the **true bottleneck in the hiring funnel**.## 🧰 Tools Used

| Tool | Purpose |
|-----|------|
| SQL Server (SSMS) | Data validation and analysis |
| Power BI | Dashboard visualization |
| GitHub | Project documentation |## 🔍 Analytical Approach

### Step 1: AI Validation

First, I validated whether the AI model accurately identifies strong candidates.

| AI Score | Hire Rate |
|--------|--------|
| <50 | 33% |
| 50-69 | 44% |
| 70-89 | 57% |
| >90 | **72%** |

Conclusion:

The AI model **correctly ranks candidate quality**.

---

### Step 2: SLA Impact

Recruiter response time dramatically impacts hiring outcomes.

| SLA Status | Hire Rate |
|------------|-----------|
| SLA Met | ~80% |
| SLA Breached | ~65% |

When recruiters delay responses, hiring success drops significantly.

---

### Step 3: Competitor Loss

Candidates are **10× more likely** to be lost to competitors when SLA is breached.

This shows that the issue is **not candidate quality but response speed**.## 📊 Dashboard

### AI Hiring Funnel Overview

![Dashboard Page 1](https://github.com/shivakumarbandari000/goodspace-ai-hiring-funnel-analysis/blob/23e18dfdce16d8cfc0557be3fc9426d908ceb084/Power%20BI/AI%20Hiring%20Funnel%20Overview.png)

---

### Recruiter Response Latency Analysis

![Dashboard Page 2](https://github.com/shivakumarbandari000/goodspace-ai-hiring-funnel-analysis/blob/23e18dfdce16d8cfc0557be3fc9426d908ceb084/Power%20BI/Recruiter%20Response%20Latency%20Analysis.png)

## 💡 Key Insight

The primary bottleneck in the hiring funnel is **recruiter response latency**, not AI accuracy.

When recruiters respond quickly, hiring success for Niche Tech roles reaches **~90%**.

Slow responses lead to a **₹4.7M recoverable revenue loss** due to candidates joining competitors.
## 🛠️ Recommendations

### 1️. Flash SLA

Introduce a **3-hour first-action SLA for Niche Tech roles**.

---

### 2️. AI Priority Alerts

Automatically notify recruiters when candidates with **AI Score > 95** apply.

---

### 3️. Incentivized Speed

Tie recruiter incentives to **SLA compliance + successful hires**.