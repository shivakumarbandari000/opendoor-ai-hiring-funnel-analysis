<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Opendoor AI - Hiring Funnel Analysis</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; line-height: 1.6; color: #333; max-width: 900px; margin: 0 auto; padding: 40px; background-color: #f4f4f9; }
        .container { background: white; padding: 40px; border-radius: 8px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h1 { color: #2c3e50; border-bottom: 2px solid #e74c3c; padding-bottom: 10px; }
        h2 { color: #e74c3c; margin-top: 30px; }
        h3 { color: #34495e; }
        .highlight { background: #fff3f3; border-left: 5px solid #e74c3c; padding: 15px; margin: 20px 0; font-style: italic; }
        .stats-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 20px; margin: 20px 0; }
        .stat-card { background: #f8f9fa; padding: 20px; border-radius: 5px; text-align: center; border: 1px solid #ddd; }
        .stat-card b { font-size: 1.2em; color: #e74c3c; }
        table { width: 100%; border-collapse: collapse; margin: 20px 0; }
        th, td { text-align: left; padding: 12px; border-bottom: 1px solid #ddd; }
        th { background-color: #f2f2f2; }
        .tag { display: inline-block; background: #34495e; color: white; padding: 5px 10px; border-radius: 3px; font-size: 0.8em; margin-right: 5px; }
        footer { margin-top: 50px; font-size: 0.9em; color: #7f8c8d; text-align: center; }
    </style>
</head>
<body>

<div class="container">
    <h1>🚀 Opendoor AI: Why Do 30% of Perfect Matches Slip Away?</h1>
    <p><strong>An Investigation into Funnel Bottlenecks and the 24-Hour Hiring Promise</strong></p>

    <div class="highlight">
        "Our AI identifies the talent, but our latency loses the hire. This project quantifies the cost of being second to the finish line."
    </div>

    <h2>📖 The Backstory</h2>
    <p>At <strong>Opendoor AI</strong>, we promise high-speed hiring within 24 hours. However, data showed that 30% of high-quality matches (AI Score >90) failed to convert. This audit investigates if the bottleneck is the <b>Algorithm</b>, the <b>Recruiter</b>, or the <b>Market</b>.</p>

    <h2>🛠️ My Technical Toolkit</h2>
    <p>
        <span class="tag">SQL Server (SSMS)</span>
        <span class="tag">Power BI</span>
        <span class="tag">Data Modeling</span>
        <span class="tag">GitHub</span>
    </p>

    <h2>🔍 How I Cracked the Code</h2>
    
    <h3>1. AI Model Validation</h3>
    <p>I first confirmed that the AI is effectively ranking talent. The hire rate scales perfectly with the AI score:</p>
    <table>
        <tr><th>AI Score Bucket</th><th>Hire Rate</th></tr>
        <tr><td>Score > 90</td><td><b>72%</b></td></tr>
        <tr><td>Score 70-89</td><td>57%</td></tr>
        <tr><td>Score < 50</td><td>33%</td></tr>
    </table>

    <h3>2. The "Aha!" Moment: SLA Impact</h3>
    <p>When recruiters met the 24-hour SLA, the hire rate was <b>80%</b>. When they breached it, the rate plummeted to <b>65%</b>. Most importantly, slow responses made candidates <b>10x more likely</b> to accept a competitor's offer.</p>
    

    <h2>💡 Business Impact</h2>
    <div class="stats-grid">
        <div class="stat-card">
            <b>549</b><br>Additional Hires
        </div>
        <div class="stat-card">
            <b>₹4.7M</b><br>Recoverable Commission
        </div>
        <div class="stat-card">
            <b>10x</b><br>Less Competitor Loss
        </div>
    </div>

    <h2>🛠️ Recommendations</h2>
    <ul>
        <li><strong>The "Flash" SLA:</strong> Mandatory 3-hour response window for Niche Tech roles.</li>
        <li><strong>AI-Priority Alerts:</strong> Instant notifications for candidates with scores >95.</li>
        <li><strong>Performance Incentives:</strong> Tie recruiter KPIs to SLA compliance.</li>
    </ul>

    <footer>
        Analyst: Shiva Kumar Bandari | Project: Opendoor AI Audit 2026
    </footer>
</div>

</body>
</html>
