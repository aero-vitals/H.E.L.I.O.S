# NASA OSDR & Spaceflight Dataset Coverage Analysis Report
**Project:** H.E.L.I.O.S. (Health Evaluation & Longevity Intelligence for Orbiting Specialists)  
**System Classification:** Autonomous Deep-Space Health Sentry & Biometric Decision-Support Platform  
**Updated:** November 2026 (Production Release Baseline)

---

## Executive Summary

Early prototypes of the system relied primarily on high-frequency streaming vital signs, utilizing only a modest fraction (~15%) of the available NASA biological data. In the current production release of H.E.L.I.O.S., the data pipeline has been overhauled into a **Two-Tier Comprehensive Architecture**:

1. **Continuous 10 Hz Telemetry Streaming Engine:** Fully ingests and evaluates the 30-column real-time stream (`astronaut_telemetry_stream.csv`), including vital signs, environmental parameters, sleep architecture scores, and dynamic risk indices across all 4 crew members.
2. **Authentic NASA OSDR Laboratory Assay Engine (`LabAssayManager`):** Directly parses, structures, and serves all 4 point-of-care biological panels from the NASA Open Science Data Repository (Inspiration4 / SOMA mission), covering **119 distinct spaceflight biomarkers** with authentic aerospace reference intervals.

The platform achieves **100% utilization of all 4 core NASA OSDR flight panels**, fusing laboratory assays with continuous autonomic and environmental telemetry to power proactive risk forecasting via the Helix-Ai Analyst.

---

## Overall Dataset Inventory & Utilization Summary

| Dataset File | File Type | Domain | Total Markers / Columns | Utilized in Production | Coverage % | Operational Role |
|---|---|---|---|---|---|---|
| `astronaut_telemetry_stream.csv` | CSV (11.3 MB) | Real-Time Telemetry | 30 columns | **30 / 30** | **100%** | Live 10 Hz WebSocket telemetry, anomaly injection, and dynamic scenario execution |
| `nasa_astronaut_baselines.json` | JSON (7.9 KB) | Crew Rest/Nominal/Workout | 5 vitals x 4 crew x 3 states | **5 / 5 vitals** | **100%** | Individualized Z-score deviation baselines (HR, HRV, SpO2, Core Temp, Sleep) |
| `OSD-569_Complete_Blood_Count.csv` | NASA OSDR CSV | Hematology & Morphology | 20 core markers (61 cols) | **20 / 20** | **100%** | Complete Blood Count (CBC) point-of-care diagnostics and microgravity hemoconcentration |
| `OSD-575_Comprehensive_Metabolic_Panel.csv` | NASA OSDR CSV | Renal, Hepatic & Electrolytes | 19 core markers (58 cols) | **19 / 19** | **100%** | Comprehensive Metabolic Panel (CMP), electrolyte imbalance, and organ function tracking |
| `OSD-575_Cardiovascular_Panel.csv` | NASA OSDR CSV | Acute-Phase Proteins | 9 acute-phase proteins | **9 / 9** | **100%** | Cardiovascular inflammation, thrombosis risk, and endothelial activation |
| `OSD-575_Immune_Panel.csv` | NASA OSDR CSV | Cytokines & Chemokines | 71 cytokine markers | **71 / 71** | **100%** | 5 functional immune clusters, cytokine storm prediction, and viral reactivation monitoring |
| `astronaut_health.db` | SQLite (WAL mode) | Historical Telemetry & Audits | Relational Schema | **100% active** | **100%** | Longitudinal trend analysis, self-assessment check-ins, and proactive alert audit logging |

**Total Authentic NASA OSDR Point-of-Care Laboratory Biomarkers:** **119 / 119 (100% Coverage)**  
**Total Continuous Telemetry & Baseline Metrics:** **35 / 35 (100% Coverage)**

---

## Tier 1: Real-Time Telemetry Stream Utilization (`astronaut_telemetry_stream.csv`)

The high-rate telemetry pipeline continuously streams 30 parameters per crew member. Fields previously flagged as unread or unmonitored have been fully integrated:

| Telemetry Field | Ingestion Pipeline | Algorithmic Evaluation | Frontend Display & Alerting | Operational Context |
|---|---|---|---|---|
| `timestamp` | TelemetryFeeder | Synchronized across ticks | Mission Elapsed Time (MET) display | Temporal telemetry indexing |
| `tick` | TelemetryFeeder | Integer clock counter | Telemetry drawer / Timeline scrubber | High-resolution tick sequencing |
| `astronaut_id` | TelemetryFeeder | Maps to C001-C004 | Crew selector & HUD cards | Individualized telemetry routing |
| `astronaut_name` | TelemetryFeeder | Canonical name mapping | Cockpit HUD & MCC console | Personnel identification |
| `mission_state` | TelemetryFeeder | Baseline state gating | Mission Control status indicators | Activity state contextualization |
| `heart_rate` | TelemetryFeeder | Z-score, ARF, PSI, QTc | Real-time waveform & HUD metric | Continuous cardiac rate tracking |
| `hrv_rmssd` | TelemetryFeeder | Z-score, EPI autonomic decay | HRV telemetry card & autonomic trend | Autonomic nervous system tone |
| `spo2` | TelemetryFeeder | TRM hypoxia, ARDS sentry | Oxygen saturation gauge & alerts | Peripheral oxygen saturation |
| `core_temp` | TelemetryFeeder | PSI strain, sepsis indicator | Thermal sensor gauge & alarms | Core body temperature |
| `sleep_score` | TelemetryFeeder | Circadian fatigue evaluation | Sleep score card & recovery drawer | Cognitive recovery & fatigue tracking |
| `cabin_co2` | TelemetryFeeder | Environmental threshold | Environmental status tile | Life support scrubber monitoring |
| `potassium` | TelemetryFeeder | Hypokalemia ARF / QTc engine | Electrolyte display & ARF gauge | Myocardial repolarization reserve |
| `hematocrit` | TelemetryFeeder | TRM thrombosis modeling | Hematology point-of-care display | Microgravity cephalic hemoconcentration |
| `wbc_count` | TelemetryFeeder | EPI early sepsis index | Immune status tile | Leukocyte immune defense |
| `il_6` | TelemetryFeeder | EPI surge & TRM vascular tone | Cytokine indicator & warning banner | Primary pro-inflammatory signaling |
| `platelet_count` | TelemetryFeeder | TRM venous stasis modeling | Coagulation panel display | Microvascular clot formation potential |
| `crp` | TelemetryFeeder | Cardiovascular inflammation | Acute-phase protein display | Systemic inflammatory response tracking |
| `radiation_flux` | TelemetryFeeder | Physical dosimeter RSI model | Radiation hazard gauge & alarm | Spacecraft ambient ionizing radiation |
| `lymphocyte_count` | TelemetryFeeder | Andrews biological depletion | Hematopoietic reserve indicator | Biological radiation sensitivity |
| `radiation_dose_gy` | TelemetryFeeder | Kinetic Gray dose estimation | Radiation dose summary card | Absorbed biological dose (Gy) |
| `computed_qtc` | TelemetryFeeder | Fridericia rate correction | ECG telemetry drawer & warnings | Corrected myocardial QT interval |
| `computed_epi` | TelemetryFeeder | Multimodal weighted fusion | Early sepsis risk gauge | Presymptomatic immune surge metric |
| `computed_arf` | TelemetryFeeder | Non-linear potassium ratio | Arrhythmogenic risk meter | Ventricular vulnerability forecast |
| `computed_trm` | TelemetryFeeder | Hemodynamic stasis model | Thrombosis risk indicator | Cephalic venous stasis risk |
| `computed_rsi` | TelemetryFeeder | Dosimeter + lymphocyte fusion | Radiation severity level | Acute radiation syndrome index |
| `scenario_phase` | TelemetryFeeder | 18 scenario controllers | Scenario banner & status bar | Simulated mission challenge phase |
| `z_score_hr` | TelemetryFeeder | Individual baseline sigma | Anomaly indicator & alert engine | Cardiac rate statistical variance |
| `z_score_hrv` | TelemetryFeeder | Autonomic baseline sigma | Anomaly indicator & alert engine | Autonomic variability variance |
| `alert_severity` | TelemetryFeeder | Multi-tiered priority triage | HUD alert badge & audible advisory | Hierarchical alert classification |
| `data_source` | TelemetryFeeder | Data lineage tracking | Telemetry inspection drawer | Ground truth provenance verification |

---

## Tier 2: Authentic NASA OSDR Laboratory Assays (`LabAssayManager`)

The backend module `backend/app/core/lab_assay_manager.py` directly loads and structures all 4 point-of-care biological CSV files from NASA OSDR, mapped directly to crew members via Inspiration4 subject identifiers (C001 through C004). 

### Authentic Study Metadata & Data Lineage:
* **Study Accession OSD-575:**
  * **Official Title:** SpaceX Inspiration4 Blood Serum Metabolic Panel and Immune/Cardiac Cytokine Arrays (Inspiration4 SOMA Longitudinal Multi-Omics Profiling)
  * **Repository Identifiers:** ALSDA LSDS-8 | DOI: `10.26030/mc5d-p710`
  * **Direct NASA OSDR Link:** [https://osdr.nasa.gov/bio/repo/data/studies/OSD-575](https://osdr.nasa.gov/bio/repo/data/studies/OSD-575)
  * **Role in HELIOS:** Grounded 119 point-of-care laboratory biomarkers across metabolic, cardiovascular acute-phase, and 71 cytokine panels for spaceflight baseline distributions.
  * **Local Data Files:**
    - `data/nasa_osdr/OSD-575_Comprehensive_Metabolic_Panel.csv` (19 core biomarkers)
    - `data/nasa_osdr/OSD-575_Cardiovascular_Panel.csv` (9 core biomarkers)
    - `data/nasa_osdr/OSD-575_Immune_Panel.csv` (71 core biomarkers)
* **Study Accession OSD-569:**
  * **Official Title:** Whole Blood Measurements from the SpaceX Inspiration4 Mission (Complete Blood Count)
  * **Repository Identifiers:** GeneLab GLDS-561 | ALSDA LSDS-7 | DOI: `10.26030/e0rx-sh52`
  * **Direct NASA OSDR Link:** [https://osdr.nasa.gov/bio/repo/data/studies/OSD-569](https://osdr.nasa.gov/bio/repo/data/studies/OSD-569)
  * **Role in HELIOS:** Used as a reference for whole-blood and Complete Blood Count (CBC) measurements to support astronaut health monitoring, display blood-health indicators, and provide a scientific data foundation alongside simulated real-time mission telemetry.
  * **Local Data File:** `data/nasa_osdr/OSD-569_Complete_Blood_Count.csv` (20 core biomarkers)

### NASA Flight Standards & Spaceflight Research Citations:
* **NASA-STD-3001 - Spaceflight Human-System Standard (Volume 1: Crew Health & Volume 2: Human Factors, Habitability, and Environmental Health):**
  * Link: [https://www.nasa.gov/ochmo/human-spaceflight-and-aviation-standards/](https://www.nasa.gov/ochmo/human-spaceflight-and-aviation-standards/)
  * Used as a technical reference to guide HELIOS astronaut health alerts and spacecraft environmental monitoring, including physiological safety indicators and cabin atmospheric parameters such as carbon dioxide levels and pressure limits.
* **NASA Human Research Program (HRP) / Hazard: Gravity Fields:**
  * Link: [https://www.nasa.gov/hrp/hazard-gravity-fields/](https://www.nasa.gov/hrp/hazard-gravity-fields/)
  * Used as a scientific reference in the "WHY" mission foundation to highlight the 1-1.5% monthly bone mineral density loss astronauts may experience in microgravity, establishing the need for autonomous health monitoring and early risk detection.
* **NASA - Cardiovascular and Vision / Fluid Shifts Study:**
  * Link: [https://www.nasa.gov/directorates/esdmd/hhp/cardiovascular-and-vision/](https://www.nasa.gov/directorates/esdmd/hhp/cardiovascular-and-vision/)
  * Used in the "WHY" mission foundation to demonstrate that approximately 2 liters of body fluid shift from the lower body toward the head in microgravity, highlighting an important astronaut health risk that HELIOS aims to help monitor.
* **NASA Human Research Program: Risk of Spaceflight Associated Neuro-Ocular Syndrome (SANS):**
  * Link: [https://www.nasa.gov/reference/risk-of-spaceflight-associated-neuro-ocular-syndrome-sans/](https://www.nasa.gov/reference/risk-of-spaceflight-associated-neuro-ocular-syndrome-sans/)
  * Used in the "WHY" mission foundation to demonstrate that approximately 70% of astronauts on long-duration ISS missions experience signs of SANS, including eye swelling and structural changes, highlighting the importance of continuous astronaut health monitoring.
* **NASA Visible Earth - Blue Marble and Black Marble Global Earth Imagery:**
  * Link: [https://visibleearth.nasa.gov/](https://visibleearth.nasa.gov/)
  * Used as visual textures for HELIOS 3D Earth visualization inside the ISS Cupola, creating realistic orbital views with geographical details and day-night transitions.

### 1. Complete Blood Count Panel (OSD-569) - 20 / 20 Markers Utilized (100%)
Reflects spaceflight-induced cephalic fluid redistribution, space anemia, and immune morphology:

1. **White Blood Cells (WBC):** Absolute count in k/uL with aerospace reference limits.
2. **Red Blood Cells (RBC):** Total erythrocyte count in M/uL.
3. **Hemoglobin (Hgb):** Erythrocyte oxygen carrying capacity in g/dL.
4. **Hematocrit (Hct):** Percentage packed cell volume, key driver for TRM venous stasis.
5. **Platelets (Plt):** Thrombocyte concentration in k/uL for hypercoagulability.
6. **Absolute Neutrophils:** Phagocytic bacterial defense in cells/uL.
7. **Neutrophils Percentage:** Differential leukocyte fraction (%).
8. **Absolute Lymphocytes:** Adaptive immune cells in cells/uL, core driver for Andrews radiation model.
9. **Lymphocytes Percentage:** Relative adaptive immune representation (%).
10. **Absolute Monocytes:** Monocyte count in cells/uL.
11. **Monocytes Percentage:** Monocyte fraction (%).
12. **Absolute Eosinophils:** Eosinophil count in cells/uL.
13. **Eosinophils Percentage:** Allergic/parasitic defense fraction (%).
14. **Absolute Basophils:** Histamine release cells in cells/uL.
15. **Basophils Percentage:** Basophil fraction (%).
16. **Mean Corpuscular Volume (MCV):** Average erythrocyte volume in fL (space anemia index).
17. **Mean Corpuscular Hemoglobin (MCH):** Average hemoglobin per red cell in pg.
18. **Mean Corpuscular Hemoglobin Concentration (MCHC):** Hemoglobin concentration in g/dL.
19. **Red Cell Distribution Width (RDW):** Erythrocyte volume anisocytosis (%).
20. **Mean Platelet Volume (MPV):** Platelet size and activation state in fL.

### 2. Comprehensive Metabolic Panel (OSD-575) - 19 / 19 Markers Utilized (100%)
Tracks electrolyte balance, renal clearance, hepatic health, and bone turnover:

1. **Sodium (Na+):** Fluid retention and microgravity hyponatremia (mmol/L).
2. **Potassium (K+):** Primary myocardial repolarization electrolyte (mmol/L), driving ARF.
3. **Chloride (Cl-):** Extracellular anion and acid-base homeostasis (mmol/L).
4. **Carbon Dioxide / Bicarbonate (CO2):** Systemic acid-base buffering capacity (mmol/L).
5. **Calcium (Ca2+):** Bone demineralization and osteoclast activity marker (mg/dL).
6. **Glucose:** Energy metabolism and spaceflight insulin resistance (mg/dL).
7. **Blood Urea Nitrogen (BUN):** Nitrogen clearance and hydration state (mg/dL).
8. **Creatinine:** Renal filtration and microgravity muscle atrophy index (mg/dL).
9. **BUN / Creatinine Ratio:** Prerenal azotemia vs intrinsic dehydration assessment.
10. **eGFR (Non-African American):** Estimated glomerular filtration rate (mL/min/1.73m2).
11. **eGFR (African American):** Population-adjusted glomerular filtration rate.
12. **Total Protein:** Serum protein concentration and nutritional state (g/dL).
13. **Albumin:** Oncotic pressure maintenance and plasma volume marker (g/dL).
14. **Globulin:** Immunoglobulin and acute-phase transport protein pool (g/dL).
15. **Albumin / Globulin Ratio (A/G):** Liver synthetic capacity vs chronic inflammation.
16. **Alkaline Phosphatase (ALP):** Bone formation and biliary canalicular turnover (U/L).
17. **Alanine Aminotransferase (ALT):** Hepatic parenchymal integrity (U/L).
18. **Aspartate Aminotransferase (AST):** Hepatic and skeletal muscle tissue integrity (U/L).
19. **Total Bilirubin:** Erythrocyte turnover and heme breakdown (mg/dL).

### 3. Cardiovascular Acute-Phase Panel (OSD-575) - 9 / 9 Markers Utilized (100%)
Quantifies vascular stress, endothelial activation, and systemic inflammation:

1. **C-Reactive Protein (CRP):** Systemic inflammatory cascade initiation (pg/mL).
2. **Fibrinogen:** Coagulation cascade substrate and hypercoagulability marker (ng/mL).
3. **L-Selectin:** Leukocyte rolling and endothelial adhesion molecule (pg/mL).
4. **Platelet Factor 4 (PF4):** Platelet activation and thrombosis progression (ng/mL).
5. **Haptoglobin:** Free hemoglobin scavenger and intravascular hemolysis tracker (ng/mL).
6. **Alpha-2 Macroglobulin (A2M):** Major serum antiprotease and cytokine carrier (ng/mL).
7. **Alpha-1 Acid Glycoprotein (AGP):** Acute-phase inflammatory reactant (ng/mL).
8. **Fetuin-A (A36):** Vascular calcification inhibitor and metabolic regulator (ng/mL).
9. **Serum Amyloid P Component (SAP):** Innate immune pattern recognition protein (pg/mL).

### 4. Immune Cytokine Panel (OSD-575) - 71 / 71 Cytokines Utilized (100%)
Grouped into 5 functional aerospace clusters to power the early immune and infection warning engine:

- **Cluster A: Pyrogens & Acute Inflammatory Cascade (6 cytokines)**
  - IL-6, TNF-alpha, IL-1-alpha, IL-1-beta, IL-1ra, TNF-beta.
- **Cluster B: Interferons & Latent Viral Reactivation (4 cytokines)**
  - IFN-gamma, IFN-alpha2, IP-10 (CXCL10), MIG (CXCL9).
- **Cluster C: Interleukins & Adaptive T-Cell Regulation (24 cytokines)**
  - IL-2, IL-3, IL-4, IL-5, IL-7, IL-8, IL-9, IL-10, IL-12p40, IL-12p70, IL-13, IL-15, IL-16, IL-17a, IL-17e (IL-25), IL-17f, IL-18, IL-20, IL-21, IL-22, IL-23, IL-27, IL-28a, IL-33.
- **Cluster D: Chemokines & Leukocyte Trafficking (20 cytokines)**
  - 6Ckine, BCA-1, CTACK, ENA-78, Eotaxin, Eotaxin-2, Eotaxin-3, Fractalkine, GRO-alpha, I-309, MCP-1, MCP-2, MCP-3, MCP-4, MDC, MIP-1-alpha, MIP-1-beta, MIP-1-delta, RANTES, TARC.
- **Cluster E: Growth Factors & Tissue Remodeling (17 cytokines)**
  - EGF, FGF-2, Flt-3L, G-CSF, GM-CSF, LIF, M-CSF, PDGF-AA, PDGF-AB/BB, sCD40L, SCF, SDF-1-alpha+beta, Thrombopoietin (TPO), VEGF-A, TGF-alpha, HGF, NGF.

---

## Mathematical Sentry Biomarkers & Risk Models

The platform bridges real-time telemetry with NASA OSDR laboratory assays through 5 validated computational biomarker algorithms (`backend/app/core/computational_biomarkers.py`):

```
+-----------------------------------------------------------------------------+
|                      H.E.L.I.O.S. COMPUTATIONAL SENTRY                      |
+-----------------------------------------------------------------------------+
|                                                                             |
|  1. Early Sepsis / Viral Index (EPI):                                       |
|     EPI = (0.45 * IL-6_score) + (0.30 * WBC_score) + (0.25 * HRV_decay * 2) |
|     Detects presymptomatic immune activation before fever onset.            |
|                                                                             |
|  2. Hypokalemic Arrhythmogenic Risk (ARF) & Dynamic Fridericia QTc:        |
|     QTc = QT / cbrt(RR)                                                     |
|     ARF = (QTc / 450.0) * (3.8 / K+)^1.8                                    |
|     Fuses rate-corrected myocardial repolarization with serum potassium.   |
|                                                                             |
|  3. Microgravity Venous Stasis & Thrombosis Risk Metric (TRM):              |
|     TRM = [ (Hct / 44)^2.5 * (Plt / 380) * sqrt(IL-6 / 10) ] / (SpO2 / 98.5)|
|     Models cephalic fluid redistribution and hypercoagulable stasis.        |
|                                                                             |
|  4. Andrews Kinetic Lymphocyte Depletion Biodosimetry (ARS / RSI):          |
|     Dose (Gy) = -ln( ALC / ALC_baseline ) / ( k * t )                       |
|     RSI = 0.5 * (Physical_Flux / 100) + 0.5 * Biological_Depletion          |
|     Converts adaptive lymphocyte depletion kinetics into biological Gray.   |
|                                                                             |
|  5. Moran Physiological Strain Index (PSI):                                 |
|     PSI = 5 * (Core_Temp - Temp_rest)/(39.5 - Temp_rest) +                  |
|           5 * (Heart_Rate - HR_rest)/(180.0 - HR_rest)                      |
|     Evaluates cardiovascular and thermoregulatory strain during EVAs.       |
|                                                                             |
+-----------------------------------------------------------------------------+
```

---

## 18 Spaceflight Mission Scenario Validation Matrix

Every metric is dynamically exercised through 18 simulated mission scenarios, demonstrating end-to-end data flow:

| # | Scenario Identifier | Primary Dataset Vectors | Targeted Physiological Impact |
|---|---|---|---|
| 1 | `CO2_SCRUBBER_BREAKTHROUGH` | `cabin_co2: 4.25 mmHg`, `heart_rate: 82+ bpm`, `spo2: 96.2%` | Hypercapnia & compensatory ventilation |
| 2 | `SLOW_DECOMPRESSION_HYPOXIA` | `spo2: 88.5%`, `heart_rate: 118 bpm`, `hrv: 24 ms` | Cabin pressure drop & acute hypoxia |
| 3 | `SOLAR_RADIATION_STORM` | `radiation_flux: 85.0 mGy/h`, `dose: 0.75 Gy`, `ALC: 0.85` | Ionizing particle event & ARS risk |
| 4 | `AMMONIA_COOLANT_LEAK` | `spo2: 89.5%`, `heart_rate: 132 bpm`, `il_6: 28 pg/mL` | Toxic inhalation & alveolar irritation |
| 5 | `ELECTRICAL_FIRE_SMOLDER` | `spo2: 93.5%`, `heart_rate: 108 bpm`, `crp: 8.5 mg/L` | Combustion aerosol & systemic inflammation |
| 6 | `HYPOKALEMIA_ARRHYTHMIA` | `potassium: 2.95 mmol/L`, `computed_qtc: 492 ms`, `ARF: 1.75` | Myocardial repolarization delay |
| 7 | `VENOUS_THROMBOSIS_RISK` | `hematocrit: 52.5%`, `platelet: 385 k/uL`, `TRM: 2.35` | Microgravity cephalic venous stasis |
| 8 | `CARDIOVASCULAR_DECONDITIONING` | `heart_rate: 98 bpm`, `hrv: 18 ms`, `hematocrit: 36.0%` | Orthostatic intolerance & space anemia |
| 9 | `CORONARY_MICROVASCULAR_STRESS` | `heart_rate: 96 bpm`, `crp: 6.8 mg/L`, `potassium: 3.6` | Subendocardial ischemia vulnerability |
| 10 | `PRESYMPTOMATIC_SEPSIS` | `il_6: 125 pg/mL`, `wbc: 14.5 k/uL`, `crp: 16.5`, `EPI: 1.65` | Early bacterial invasion detection |
| 11 | `LATENT_VIRUS_REACTIVATION` | `il_6: 22 pg/mL`, `lymphocyte: 1.4 k/uL`, `EPI: 0.95` | Epstein-Barr / Varicella zoster flare |
| 12 | `CYTOKINE_RELEASE_STORM` | `il_6: 195 pg/mL`, `wbc: 16.8 k/uL`, `crp: 24.0`, `EPI: 1.95` | Hyper-inflammatory cytokine surge |
| 13 | `RADIATION_MARROW_EXHAUSTION` | `lymphocyte: 0.52 k/uL`, `wbc: 2.4 k/uL`, `RSI: 1.45` | Prolonged hematopoietic marrow depletion |
| 14 | `NEPHROLITHIASIS` | `heart_rate: 88 bpm`, `hrv: 28 ms`, `calcium: elevated` | Renal micro-calculus pain episode |
| 15 | `INTRAVASCULAR_DEHYDRATION` | `hematocrit: 52.0%`, `heart_rate: 92 bpm`, `hrv: 22 ms` | Hypovolemic intravascular fluid contraction |
| 16 | `HEPATIC_METABOLIC_DYSFUNCTION` | `alt: elevated`, `ast: elevated`, `bilirubin: elevated` | Phase I/II xenobiotic clearance fatigue |
| 17 | `SPACE_VISION_SANS` | `cabin_co2: 3.6 mmHg`, `platelet: 290 k/uL` | Spaceflight-Associated Neuro-ocular Syndrome |
| 18 | `CIRCADIAN_FATIGUE_DRIFT` | `sleep_score: 42.0`, `heart_rate: +14 bpm`, `hrv: 22 ms` | Chronic circadian phase misalignment |

---

## Architectural Data Flow & Verification

The integrated telemetry and laboratory assay pipeline executes without external cloud dependencies:

```
[NASA OSDR Raw CSVs]           [Telemetry Stream CSV]         [Crew Baseline JSON]
(OSD-569 / OSD-575 Panels)     (30-Field 10Hz Feed)           (5 Vitals x 4 Crew)
         |                              |                              |
         v                              v                              v
  LabAssayManager                TelemetryFeeder               BaselineManager
  (Ingestion & Structuring)      (Real-time State Sync)        (Z-Score Engine)
         |                              |                              |
         +------------------------------+------------------------------+
                                        |
                                        v
                           FastAPI Aerospace Backend
                     (/api/telemetry/lab-assays, /ws/telemetry)
                                        |
                 +----------------------+----------------------+
                 |                                             |
                 v                                             v
        Helix-Ai Analyst                          React 19 Command Surface
  (Autonomous Sentry Audits)                (HealthTelemetryView / Cockpit HUD)
```

1. **Ingestion & Caching:** `LabAssayManager` reads all 4 NASA OSDR files at application bootstrap.
2. **REST Endpoints:** `/api/telemetry/lab-assays/{astronaut_id}` and `/api/telemetry/lab-assays` expose complete point-of-care panels for individual and crew-wide inspection.
3. **Frontend Integration:** `frontend/src/services/labAssayService.ts` fetches and caches laboratory metrics, rendering them in `HealthTelemetryView` alongside continuous waveforms, trend drawers, and reference ranges.
4. **Autonomous Triage:** `Helix-Ai Analyst` monitors deviations against baseline values, generating prioritized advisories without requiring real-time Earth communication.

---

## Conclusion

The H.E.L.I.O.S. data architecture has achieved **full coverage** of all planned NASA OSDR laboratory panels (119 biomarkers) and continuous telemetry streams (30 fields). By fusing real-time autonomic indicators with authentic spaceflight laboratory assays, the system provides deep-space crews with actionable, offline-capable health situational awareness.
