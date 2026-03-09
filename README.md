# 🚀 Opendoor AI: Why Do 30% of Perfect Matches Slip Away?
### An Investigation into Funnel Bottlenecks and the 24-Hour Hiring Promise
## 📖 The Backstory
At Opendoor AI, we live by a bold promise: High-speed hiring within 24 hours. Our AI does the heavy lifting, matching top-tier talent with the right roles in seconds.

But there was a catch. Our internal data revealed a frustrating trend: roughly 30% of our "Gold Standard" candidates (those with an AI score >90) never actually made it to the finish line. I built this project to find out why. Is our AI missing the mark? Or is something else killing the momentum before the 24-hour clock runs out?
## Where is the Leak?
I dove into the data to see if the bottleneck was a technical failure or a human one. I focused on three potential culprits:

The AI: Was it ranking candidates incorrectly?

The Humans: Were recruiters moving too slowly?

The Market: Were competitors simply faster than us?

### My Technical Toolkit
To solve this, I leaned on:

SQL Server (SSMS) for the heavy lifting—validating data integrity and running complex joins across application facts and AI scores.

Power BI to breathe life into the numbers through interactive storytelling.

GitHub to keep the logic transparent and version-controlled.

## 🔍 How I Cracked the Code
### Step 1: Is the AI Broken? (Validation)
First, I had to be sure our AI actually knew what a "good candidate" looked like. The data spoke for itself: candidates scored >90 by the AI had a 72% hire rate, while those under 50 only hit 33%.

### Conclusion:
 The AI is doing its job brilliantly. It knows talent when it sees it.

### Step 2:The "Aha!" Moment (SLA Impact)
When I compared candidates where recruiters met the SLA (Service Level Agreement) versus those where they didn't, the story changed.

#### SLA Met: 80% Hire Rate.

#### SLA Breached: Drops to 65%.

The real shocker? When a recruiter is slow, candidates are 10x more likely to be snatched up by a competitor. We weren't losing talent because they weren't good; we were losing them because we were slow.
## 📊 Dashboard

### AI Hiring Funnel Overview

![Dashboard Page 1](https://github.com/shivakumarbandari000/goodspace-ai-hiring-funnel-analysis/blob/23e18dfdce16d8cfc0557be3fc9426d908ceb084/Power%20BI/AI%20Hiring%20Funnel%20Overview.png)

---

### Recruiter Response Latency Analysis

![Dashboard Page 2](https://github.com/shivakumarbandari000/goodspace-ai-hiring-funnel-analysis/blob/23e18dfdce16d8cfc0557be3fc9426d908ceb084/Power%20BI/Recruiter%20Response%20Latency%20Analysis.png)

## 💡 The Bottom Line
The bottleneck isn't our code—it's latency.

By analyzing the "Niche Tech" roles specifically, I found that hiring success sky-rockets to 90% if we just move faster. Slow responses aren't just a minor delay; they are a ₹4.7M revenue leak.

### 🛠️ My Recommendations for Opendoor AI
To fix the funnel, I propose three immediate shifts:

1. The "Flash" SLA: Implement a mandatory 3-hour response window for Niche Tech roles.

2. AI-Priority Alerts: Ping recruiters instantly when a "Unicorn" (Score >95) enters the system.


3. Incentivized Speed: Tie recruiter rewards to SLA compliance, not just total hires.
