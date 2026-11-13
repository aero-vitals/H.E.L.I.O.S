# NASA Space Apps Challenge 2026 - Section 06: "Use of AI and references" Submission Guide
**Project:** H.E.L.I.O.S. (Health Evaluation & Longevity Intelligence for Orbiting Specialists)  
**Team:** Team Aero Vitals  
**Challenge:** Create Health Monitoring Software for Astronauts on Space Missions  

---

## Instructions for the Submission Portal
In your NASA Space Apps project submission dashboard, navigate to **06 Use of AI and references**.
Copy-paste the exact text provided below into the two required text fields.

---

## Field 1: Use of AI *
*Every AI tool you used, what you used it for, and the data it worked on. Write "None" if you didn't use AI.*

### Copy-Paste Block:
```text
We utilized artificial intelligence across two distinct operational domains:

1. System Architecture & Autonomous Onboard Intelligence (Helix-Ai Analyst):
- Purpose: Built directly into the spacecraft software as an autonomous, 100% offline-first sentry and decision-support engine. Helix-Ai Analyst performs sub-second (<400 ms) physiological reasoning, categorizes multi-system anomalies into tiered priority states (NOMINAL, WATCH, WARNING, CRITICAL), and synthesizes spoken natural voice directives paired with authentic NASA Quindar tones (2525 Hz / 2475 Hz) to assist astronauts during high-stress flight emergencies without ground intervention.
- Data Processed: Evaluated continuous high-rate telemetry (10 Hz heart rate, Lead-II ECG waveforms, PPG pulse oximetry, core body temperature, respiration rate, cabin CO2, radiation flux) and 119 authentic laboratory biomarkers from the NASA Open Science Data Repository (OSD-569 and OSD-575), including complete blood counts, comprehensive metabolic panels, and immune cytokine arrays.

2. Software Development, Engineering & Optimization (Gemini & LLM Assistants):
- Purpose: Assisted the engineering team with full-stack TypeScript/React 19 and Python/FastAPI code generation, mathematical algorithm optimization (Fridericia QTc rate correction, Andrews kinetic lymphocyte biodosimetry, and Z-score baseline models), architectural security hardening (SEC-02 path boundary enforcement and SEC-06 Content Security Policy), and technical documentation compilation.
- Data Processed: Project codebase, open-source documentation, peer-reviewed aerospace physiological formulas, and NASA open flight software standards.
```

---

## Field 2: References *
*Every source, paper, dataset, library and asset you drew on, with links where you have them.*

### Copy-Paste Block:
```text
1. NASA Flight Standards & Spaceflight Research:
- NASA-STD-3001 - Spaceflight Human-System Standard (Volume 1: Crew Health & Volume 2: Human Factors, Habitability, and Environmental Health) - https://www.nasa.gov/ochmo/human-spaceflight-and-aviation-standards/
- NASA-Human Research Program (HRP) / Hazard: Gravity Fields - https://www.nasa.gov/hrp/hazard-gravity-fields/
- NASA - Cardiovascular and Vision / Fluid Shifts Study - https://www.nasa.gov/directorates/esdmd/hhp/cardiovascular-and-vision/
- NASA-Human Research Program: Risk of Spaceflight Associated Neuro-Ocular Syndrome (SANS) - https://www.nasa.gov/reference/risk-of-spaceflight-associated-neuro-ocular-syndrome-sans/
- Inspiration4 SOMA Multi-Omics Profiling Study (Nature, 2024) - https://doi.org/10.1038/s41586-024-07639-y
- Assessment of Jugular Venous Blood Flow and Thrombosis in Astronauts (JAMA Network Open, 2019) - https://doi.org/10.1001/jamanetworkopen.2019.15011
- Immune System Dysregulation During Long-Duration Spaceflight (Frontiers in Immunology, 2018) - https://doi.org/10.3389/fimmu.2018.01437

2. Authentic NASA & Space Agency Datasets:
- NASA OSDR OSD-575: Inspiration4 (SOMA) Longitudinal Multi-Omics Profiling (Grounded 119 point-of-care laboratory biomarkers) - https://osdr.nasa.gov/bio/repo/data/studies/OSD-575
- NASA OSDR OSD-569: Whole Blood Measurements from the SpaceX Inspiration4 Mission (Complete Blood Count) - https://osdr.nasa.gov/bio/repo/data/studies/OSD-569
- NASA Visible Earth - Blue Marble and Black Marble Global Earth Imagery - https://visibleearth.nasa.gov/
- ESO 360-Degree Milky Way Celestial Panorama (European Southern Observatory) - https://www.eso.org/public/images/eso0932a/

3. Open-Source Software Frameworks & Libraries:
- FastAPI (v0.115+) by Sebastian Ramirez - https://fastapi.tiangolo.com/
- React 19 by Meta Platforms - https://react.dev/
- Three.js WebGL (r160+) by Ricardo Cabello - https://threejs.org/
- TypeScript 5.6 by Microsoft - https://www.typescriptlang.org/
- Tailwind CSS by Tailwind Labs - https://tailwindcss.com/
- Lucide React Icons - https://lucide.dev/
- SQLite3 Engine (WAL Mode) - https://sqlite.org/

4. 3D Model Assets & Textures:
- International Space Station (ISS) 3D Model by uperesito (CC BY-SA 4.0) - https://sketchfab.com/
- Animated Floating Astronaut in Space Suit by LasquetiSpice (CC BY 4.0) - https://sketchfab.com/
- Spacecraft Interior Habitat Corridor by Ryley Burnett (CC BY 4.0) - https://sketchfab.com/
- Computer Console & Monitor Models by Inditrion Dradnon, jimbogim, and shedmon (CC BY 4.0) - https://sketchfab.com/

5. Stock Video Footage & Media Sources:
- Artemis II Launch, Kennedy Space Center (File 1001512) - https://commons.wikimedia.org/wiki/File:Artemis_II_Launch_-_Kennedy_Space_Center_(1001512).webm
- Artemis II Launch, Kennedy Space Center (File 1001792) - https://commons.wikimedia.org/wiki/File:Artemis_II_Launch_-_Kennedy_Space_Center_(1001792).webm
- Artemis II Launch from OSB II Balcony, Slow Motion (File C4829) - https://commons.wikimedia.org/wiki/File:Artemis_II_Launch_from_OSB_II_Balcony_-_Slo_Mo_(C4829).webm
- Artemis II Launch Live, NASA Scientific Visualization Studio (File SVS31385) - https://commons.wikimedia.org/wiki/File:Artemis_II_launch_live_(SVS31385_-_-2-launch-short-4K).webm
- Space Exploration Footage - https://www.bilibili.com/video/BV1txjM6LEvR/
```
