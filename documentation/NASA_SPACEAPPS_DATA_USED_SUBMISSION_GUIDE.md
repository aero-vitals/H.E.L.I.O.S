# NASA Space Apps Challenge 2026 - Section 05: "Data Used" Submission Guide
**Project:** H.E.L.I.O.S. (Health Evaluation & Longevity Intelligence for Orbiting Specialists)  
**Team:** Team Aero Vitals  
**Challenge:** Create Health Monitoring Software for Astronauts on Space Missions  

---

## Instructions for the Submission Portal
In your NASA Space Apps project submission dashboard, navigate to **05 Data used**.
Click the **+ Add** button for each category and copy-paste the exact values provided below.

---

## Category 1: NASA Data
*Every NASA dataset you used. Judges check this against your demo.*

### Entry 1
* **Dataset name:**
  ```text
  NASA OSDR OSD-575: Inspiration4 (SOMA) Longitudinal Multi-Omics Profiling
  ```
* **Link:**
  ```text
  https://osdr.nasa.gov/bio/repo/data/studies/OSD-575
  ```
* **How you used it:**
  ```text
  Grounded 119 point-of-care laboratory biomarkers across metabolic, cardiovascular acute-phase, and 71 cytokine panels for spaceflight baseline distributions.
  ```

---

### Entry 2
* **Dataset name:**
  ```text
  NASA OSDR OSD-569: Whole Blood Measurements from the SpaceX Inspiration4 Mission (Complete Blood Count)
  ```
* **Link:**
  ```text
  https://osdr.nasa.gov/bio/repo/data/studies/OSD-569
  ```
* **How you used it:**
  ```text
  We used this NASA dataset in HELIOS as a reference for whole-blood and Complete Blood Count (CBC) measurements to support astronaut health monitoring, display blood-health indicators, and provide a scientific data foundation alongside our simulated real-time mission telemetry.
  ```

---

### Entry 3
* **Dataset name:**
  ```text
  NASA-STD-3001 - Spaceflight Human-System Standard (Volume 1: Crew Health & Volume 2: Human Factors, Habitability, and Environmental Health)
  ```
* **Link:**
  ```text
  https://www.nasa.gov/ochmo/human-spaceflight-and-aviation-standards/
  ```
* **How you used it:**
  ```text
  We used NASA-STD-3001 as a technical reference to guide HELIOS's astronaut health alerts and spacecraft environmental monitoring, including physiological safety indicators and cabin atmospheric parameters such as carbon dioxide levels and pressure limits.
  ```

---

### Entry 4
* **Dataset name:**
  ```text
  NASA Visible Earth - Blue Marble and Black Marble Global Earth Imagery
  ```
* **Link:**
  ```text
  https://visibleearth.nasa.gov/
  ```
* **How you used it:**
  ```text
  We used NASA's Blue Marble and Black Marble Earth imagery as visual textures for HELIOS's 3D Earth visualization inside the ISS Cupola, creating realistic orbital views with geographical details and day-night transitions.
  ```

---

### Entry 5
* **Dataset name:**
  ```text
  NASA-Human Research Program (HRP) / Hazard: Gravity Fields
  ```
* **Link:**
  ```text
  https://www.nasa.gov/hrp/hazard-gravity-fields/
  ```
* **How you used it:**
  ```text
  Used as a scientific reference in the "WHY" section of our video to highlight the 1-1.5% monthly bone mineral density loss astronauts may experience in microgravity, establishing the need for a system like HELIOS to support astronaut health monitoring and early risk detection.
  ```

---

### Entry 6
* **Dataset name:**
  ```text
  NASA - Cardiovascular and Vision / Fluid Shifts Study
  ```
* **Link:**
  ```text
  https://www.nasa.gov/directorates/esdmd/hhp/cardiovascular-and-vision/
  ```
* **How you used it:**
  ```text
  We used this NASA research in the "WHY" section of our video to demonstrate that approximately 2 liters of body fluid shift from the lower body toward the head in microgravity, highlighting an important astronaut health risk that HELIOS aims to help monitor.
  ```

---

### Entry 7
* **Dataset name:**
  ```text
  NASA-Human Research Program: Risk of Spaceflight Associated Neuro-Ocular Syndrome (SANS)
  ```
* **Link:**
  ```text
  https://www.nasa.gov/reference/risk-of-spaceflight-associated-neuro-ocular-syndrome-sans/
  ```
* **How you used it:**
  ```text
  We used this NASA research in the "WHY" section of our video to demonstrate that approximately 70% of astronauts on long-duration ISS missions experience signs of SANS, including eye swelling and structural changes, highlighting the importance of continuous astronaut health monitoring.
  ```

---

## Category 2: Other Space Agency Data
*ESA, JAXA, CSA, ISRO and other partner agencies.*

### Entry 1
* **Dataset name:**
  ```text
  ESO 360-Degree Milky Way Celestial Panorama (European Southern Observatory)
  ```
* **Link:**
  ```text
  https://www.eso.org/public/images/eso0932a/
  ```
* **How you used it:**
  ```text
  Projected high-resolution deep-space celestial sphere coordinates, sun angle calculations, and cosmic background vectors in the 3D orbital simulation.
  ```

---

## Submission Checklist for Judges
* All links are direct, valid, and publicly accessible.
* Every listed dataset directly maps to an active module, data file, or pitch foundation in the codebase (`backend/app/core/lab_assay_manager.py`, `data/nasa_osdr/`, `backend/app/core/computational_biomarkers.py`, and `frontend/`).
* Demonstrates authentic open science grounding fulfilling the NASA Space Apps Challenge evaluation criteria.
