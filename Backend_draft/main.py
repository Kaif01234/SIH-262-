# SIH26262 AICTE FlowTrack - FastAPI Backend Stub
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from typing import List, Optional
from datetime import date

app = FastAPI(title="AICTE FlowTrack API")

class ApplicationUpdate(BaseModel):
    application_id: str
    action: str
    officer_name: str
    remarks: str
    next_stage: Optional[str] = None

@app.get("/api/applications/pending")
async def get_pending_applications(bureau: str = "All"):
    """Fetch stage-wise pending applications for the dashboard."""
    # Stub for PostgreSQL SELECT query
    return {
        "status": "success",
        "data": {
            "Under_Scrutiny": 312,
            "Pending_EVC": 86,
            "SAC_SHC": 54
        }
    }

@app.post("/api/applications/process")
async def process_application(update: ApplicationUpdate):
    """Advance an application to the next APH stage and log the audit trail."""
    # Stub for INSERT into audit_logs and UPDATE applications table
    return {
        "status": "success",
        "message": f"Application {update.application_id} successfully updated to {update.next_stage}.",
        "audit_logged": True
    }

@app.get("/api/compliance/expiring-alerts")
async def check_expiring_documents(days_threshold: int = 30):
    """Identify institution documents expiring soon and trigger notification service."""
    # Stub for querying compliance_documents table
    return {"expiring_count": 12, "alerts_dispatched": True}