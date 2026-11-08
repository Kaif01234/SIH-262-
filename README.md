# AICTE FlowTrack – Approval Workflow Automation, Compliance Monitoring and Alert Management System

**Smart India Hackathon 2026 | Problem Statement ID: SIH26262**  
**Organization:** All India Council for Technical Education (AICTE)  
**Theme:** Smart Automation | **Category:** Software  
**Team Name:** Verifix 5 | **Team ID:** 199765 
**Live Prototype Demo:** [Click here to view](https://kaif01234.github.io/SIH-262-/)

---

## 1. Problem Overview
AICTE handles approval applications from technical institutions across multiple stages such as Scrutiny, Re-scrutiny, Expert Visit Committee (EVC), SAC/SHC, and final approval under the AICTE Approval Process Handbook (APH). 

When application progress, EVC schedules, institutional undertakings, and document expiry dates (such as land leases, building plans, and fire safety certificates) are tracked across separate records, it becomes difficult for officials to see where an application is pending, coordinate visits on time, and prevent document expiry violations.

## 2. Our Proposed Solution
**AICTE FlowTrack** is a centralized web platform designed to manage approval workflows, track application progress stage-by-stage, coordinate EVC activities, monitor compliance undertakings, and send early alerts for approaching deadlines.

### Key Features
1. **Institution Application Portal:** Institutions can submit applications, upload required statutory documents, submit undertakings, and track real-time stage progress.
2. **Configurable APH Workflow Engine:** Routes applications dynamically according to their category under the applicable APH (e.g., *Only Scrutiny*, *Scrutiny + EVC*, *EVC + SAC/SHC*, *Only EVC*).
3. **Scrutiny & EVC Tracking:** Officials can review applications, record scrutiny remarks, schedule EVC visits, assign committees, and track inspection reports.
4. **Compliance & Document Expiry Monitoring:** Tracks institutional undertakings and important document expiry dates with status indicators (*Valid*, *Expiring Soon*, *Overdue*).
5. **Automated Alerts & Escalation:** Sends reminders to concerned officials and institutions for pending tasks, EVC schedules, and expiring documents.
6. **Digital Audit Trail & Human Control:** Records every stage update, officer remark, and timestamp for accountability, while keeping all final scrutiny and approval decisions with authorized AICTE officials.

---

## 3. Current Prototype (v1) vs. Proposed Production Stack

To demonstrate the complete workflow for SIH evaluation, this repository includes a self-contained **v1 Working Browser Prototype**:

| Component | Current Prototype (v1 Demo) | Proposed Production Architecture |
| :--- | :--- | :--- |
| **Frontend** | HTML5, CSS3, Vanilla JavaScript (Light & Dark Mode) | React.js |
| **Backend** | Client-side workflow routing & rule simulation | Python / FastAPI |
| **Database** | Browser `localStorage` with illustrative sample data | PostgreSQL + Secure File Storage |
| **Alerts** | In-app notification center & simulated SMS/Email dispatch | Integrated Email / SMS Gateways + Scheduler |

*Note: All institutions, application numbers, counts, and dates in the prototype are illustrative sample data for demonstration purposes and do not represent live AICTE records.*

---

## 4. What You Can Test in the Prototype
* **Role Switcher:** Switch between **AICTE Official View** (scrutiny, stage advancement, EVC scheduling, alert dispatch) and **Institution Portal View** (new application submission, document renewal, compliance submission).
* **Dashboard & Analytics:** View reconciled stage-wise pendency across Scrutiny, Re-scrutiny, EVC, SAC/SHC, and Approval, along with compliance status breakdowns.
* **360° Application Scrutiny Modal:** Open any application to inspect its custom APH route, verify document expiry dates, enter official remarks, and advance or flag defects.
* **EVC Coordination Hub:** Schedule new EVC inspections and update committee report statuses.
* **Document Expiry & Alerts:** Filter expiring lease agreements, fire safety certificates, and building plans, and trigger simulated reminder alerts.
* **Audit Trail:** View the chronological log of all actions taken during your session.

---

## 5. How to Run the Prototype Locally
1. Clone or download this repository:
   ```bash
   git clone [https://github.com/Kaif01234/SIH-262-.git](https://github.com/Kaif01234/SIH-262-.git)
