
# Hybrid Solar–Battery–Electrolyzer System for Green Hydrogen Production

## Project Overview

This project presents the **design and simulation of a hybrid renewable energy system** that integrates a **Solar Photovoltaic (PV) array, Lithium-ion Battery Energy Storage System (BESS), and an Alkaline Electrolyzer** for sustainable hydrogen production.

The objective of the model is to convert **intermittent solar energy into hydrogen**, enabling **long-term energy storage and improved renewable energy utilization**.

The system is simulated in **MATLAB/Simulink**, where the PV array generates electricity, the battery stabilizes power fluctuations, and the electrolyzer converts excess electrical energy into hydrogen that is stored for later use. :contentReference[oaicite:0]{index=0}

This architecture demonstrates a practical approach for **green hydrogen production and renewable energy storage in future decentralized energy systems.**

---

# System Architecture

The hybrid system consists of five main subsystems.

## 1. Solar Photovoltaic (PV) Array
The PV array serves as the **primary energy generation source**. Solar irradiance is converted into electrical power using semiconductor-based PV modules.

To ensure maximum energy extraction, the system implements the **Perturb and Observe (P&O) Maximum Power Point Tracking (MPPT) algorithm**, which continuously adjusts the operating voltage of the PV system.



The MPPT controller ensures the PV system operates at its **maximum power point under varying irradiance conditions**.

---

## 2. DC–DC Converter

A **boost converter** is used to regulate the PV output voltage and maintain the required DC bus voltage.

Functions:

- Maintains stable system voltage
- Transfers power efficiently to downstream components
- Supports MPPT control operation

---

## 3. Battery Energy Storage System

The lithium-ion battery acts as a **short-term energy buffer** in the hybrid system.

Its main roles include:

- Stabilizing the DC bus voltage
- Storing excess PV energy
- Supplying power during low solar irradiance

The battery model uses a **Thevenin equivalent circuit**, which captures:

- Internal resistance losses
- Dynamic transient behavior
- State of charge (SOC) variations

Battery specifications:

- Nominal voltage: 240 V
- Capacity: 50 Ah
- Energy capacity: ≈12 kWh

---

## 4. Alkaline Electrolyzer

The electrolyzer converts electrical energy into hydrogen using **water electrolysis**.

Electrochemical reactions:

Cathode:
```

2H₂O + 2e⁻ → H₂ + 2OH⁻

```

Anode:
```

2OH⁻ → ½O₂ + H₂O + 2e⁻

```

Overall reaction:
```

H₂O → H₂ + ½O₂

```

Hydrogen production is calculated using **Faraday’s Law of Electrolysis**, where the hydrogen generation rate is directly proportional to the current supplied to the electrolyzer.

Typical parameters:

- Cell voltage ≈ 1.9 V
- Stack current range: 0–40 A
- Operating temperature: 60–80°C
- Faraday efficiency ≈ 95%

---

## 5. Hydrogen Storage System

The produced hydrogen is stored in a **pressurized storage tank**.

Storage characteristics:

- Tank volume: 1 m³
- Storage temperature: 273 K
- Pressure range: up to ~70 bar

Hydrogen storage provides **long-term energy storage capability**, which is essential for renewable energy systems.

---

# Software and Tools

The system simulation was performed using:

- MATLAB R2025a
- Simulink
- Simscape Electrical
- Simulink Control Design Toolbox

These tools allow multi-domain modeling of **electrical, thermal, and electrochemical systems**.

---

# Simulation Setup

The simulation model integrates all subsystems through a **common DC bus**, enabling coordinated energy flow between the PV array, battery, and electrolyzer.

Important simulation parameters:

| Parameter | Value |
|--------|--------|
Battery voltage | 240 V |
Electrolyzer cells | 50 |
Electrolyzer stack voltage | ~90 V |
Hydrogen tank volume | 1 m³ |
Simulation duration | 10,000 seconds |
Control sampling time | 1 second |

The system was tested under different operating conditions including:

- Constant solar irradiance
- Variable solar irradiance
- Battery discharge operation
- Energy balance validation

---

# How to Run the Simulation

### Step 1 — Clone the Repository

```

git clone 
cd hybrid-hydrogen-system

```

### Step 2 — Open MATLAB

Open MATLAB and navigate to the project directory.

### Step 3 — Initialize Parameters

Run the initialization script:

```

Start_Up.m

```

This loads all system parameters and hydrogen properties into the MATLAB workspace.

### Step 4 — Open the Simulink Model

Open the main simulation model:

```

Green_H2_Battery_Solar.slx

```

### Step 5 — Run Simulation

Click **Run** in Simulink to execute the simulation.

---

# Results and Discussion

The simulation results demonstrate the effective operation of the **hybrid PV–Battery–Electrolyzer energy system**.

The system successfully converts solar energy into hydrogen while maintaining stable electrical operation.

---

## PV and Electrolyzer Current Behavior

The PV current fluctuates between **0 and 650 A**, corresponding to variations in solar irradiance.

The electrolyzer current reaches values between **800 and 1500 A**, indicating that most of the generated solar power is directed toward hydrogen production.

The battery current remains relatively small (0–100 A), showing that it primarily acts as a **buffer to stabilize system fluctuations** rather than a major energy source.

---

## Voltage Characteristics

The PV array voltage varies between **350 V and 500 V**, depending on irradiance levels and MPPT operation.

The electrolyzer voltage remains nearly constant at **220–230 V**, demonstrating stable DC bus regulation and efficient power transfer from the PV system.

Stable voltage behavior is critical to ensure reliable electrolyzer operation.

---

## Energy Consumption Analysis

The cumulative energy consumed by the electrolyzer increases nearly linearly during the simulation.

Total electrical energy supplied to the electrolyzer reaches approximately:

**1000 kWh**

This corresponds to an average system power of about **95–100 kW**.

The near-linear energy curve indicates:

- stable converter operation
- minimal power losses
- efficient system control

---

## Hydrogen Production Performance

Hydrogen generation increases steadily throughout the simulation.

Key results:

| Parameter | Value |
|--------|--------|
Hydrogen pressure | 0–70 bar |
Hydrogen mass flow | 1.8–2.5 kg/h |
Total hydrogen produced | ≈ 90 kg |

The continuous pressure increase confirms stable hydrogen generation and storage without interruptions.

---

## Battery State of Charge (SOC)

The battery SOC decreases gradually from **100% to approximately 75%**.

This indicates that:

- the battery provides supplementary energy support
- PV remains the dominant energy source
- charge-discharge cycles occur smoothly

No abrupt SOC variations were observed, confirming stable battery operation.

---

## System Stability

The simulation confirms that the hybrid architecture successfully:

- maintains DC bus voltage stability
- balances energy flow between PV, battery, and electrolyzer
- ensures continuous hydrogen production

The system effectively converts **intermittent solar power into a stable hydrogen energy carrier**.

---

# Key Outcomes

The hybrid PV-Battery-Electrolyzer system demonstrates:

- efficient renewable energy utilization
- stable hydrogen production
- minimal power conversion losses
- reliable DC microgrid operation

These results validate the feasibility of integrating **renewable energy systems with hydrogen production technologies** for future clean energy infrastructure.

---

# Future Improvements

Possible future enhancements include:

- integration with hydrogen fuel cells
- optimization using AI-based control strategies
- economic feasibility analysis
- hardware implementation and real-time testing
- grid-connected hybrid system studies

---

# Conclusion

This project successfully demonstrates the design and simulation of a **hybrid renewable energy system for green hydrogen production**.

The integration of solar PV, battery storage, and an alkaline electrolyzer enables efficient conversion of solar energy into hydrogen while maintaining stable system operation.

The results highlight the potential of hybrid renewable-hydrogen systems as a **sustainable solution for long-term energy storage and carbon-free energy production.**

---

# License

This repository is intended for **academic and research purposes**.

```

---

