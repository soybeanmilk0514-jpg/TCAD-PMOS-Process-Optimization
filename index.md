---
title: TCAD PMOS Process Optimization
---

# TCAD PMOS Process Optimization

## Project Overview

기존 NMOS 공정 예제를 PMOS 구조와 바이어스 조건으로 변경하고, LDD와 Source/Drain 이온주입 조건 및 열처리 변수를 단계적으로 비교한 프로젝트입니다.

- **SProcess:** NWell, BF₂ LDD, BF₂ Source/Drain, RTA 조건 변경
- **SDevice:** PMOS 동작에 맞춘 음의 gate/drain bias
- **Result Analysis:** PMOS drain current 부호를 고려한 성능 비교
- **Optimization:** LDD Dose → LDD Energy → S/D Dose → S/D Energy → RTA
- **Verification:** transfer curve와 12개 TDR 공정 단계 확인

**Summary:**  
This project converts an NMOS process example to PMOS and evaluates process parameters using drive current, leakage current, and subthreshold swing.

---

## Project Information

| Item | Description |
|---|---|
| Course | 반도체집적공정 |
| Period | 2026.04 |
| Tool | Synopsys Sentaurus TCAD |
| Modules | SProcess, SDevice, SVisual |
| Device | Planar PMOS |
| Status | Completed |

---

## Objective and Target

| Metric | Target |
|---|---:|
| Drive current magnitude at Vg = -2.5 V | `> 1e-5 A/µm` |
| Leakage current magnitude at Vg = 0 V | `< 1e-14 A/µm` |
| SS | `< 100 mV/dec` |

---

## Final Result

| Parameter | Final Value |
|---|---:|
| LDD Dose / Energy | `1e13 cm^-2` / 4 keV |
| S/D Dose / Energy | `7e15 cm^-2` / 7 keV |
| RTA variable | 1 |
| Anneal temperature | 1000 °C |
| Vg sweep | 0 → -2.5 V |

| Metric | Result at Vd = -1.0 V |
|---|---:|
| abs(Id) | `1.210e-04 A/µm` |
| abs(Ioff) | `2.581e-16 A/µm` |
| SS | 85.321 mV/dec |
| Vtgm | -1.175 V |

![Final results](./figures/final-results.png)

---

## Process and Electrical Verification

### Process Flow

[12개 공정 단계 자세히 보기](./guide/05_process_flow_visualization.md)

### Final PMOS Structure

![Final structure](./figures/report-page-29.png)

### Transfer Curve

![Transfer curve](./figures/report-page-30.png)

음의 gate voltage 방향으로 갈수록 PMOS drain current의 크기가 증가하는 transfer characteristic을 확인했습니다.

---

## Optimization Flow

```text
NMOS-to-PMOS conversion
→ LDD Dose
→ LDD Energy
→ Source/Drain Dose
→ Source/Drain Energy
→ RTA
→ Final candidate
```

[최적화 과정 자세히 보기](./guide/06_process_optimization.md)

---

## Detailed Documents

| No. | Document | What You Can Check |
|---:|---|---|
| 00 | [Navigation](./guide/00_navigation.md) | 전체 문서와 source 위치 |
| 01 | [Project Overview](./guide/01_project_overview.md) | 문제 정의와 전체 흐름 |
| 02 | [nMOS-to-PMOS Conversion](./guide/02_nmos_to_pmos_conversion.md) | dopant와 bias 변경 이유 |
| 03 | [SProcess Implementation](./guide/03_sprocess_implementation.md) | implant와 anneal 설정 |
| 04 | [SDevice Bias Setup](./guide/04_sdevice_bias_setup.md) | PMOS bias와 transfer curve |
| 05 | [Process Flow Visualization](./guide/05_process_flow_visualization.md) | 12개 TDR 공정 단계 |
| 06 | [Process Optimization](./guide/06_process_optimization.md) | 단계별 조건 탐색 |
| 07 | [Final Results](./guide/07_final_results.md) | 최종 수치와 해석 |
| 08 | [Limitations and Next Steps](./guide/08_limitations_and_next_steps.md) | 한계와 개선 방향 |

---

## Data and Source

- [Final results CSV](./results/final_results.csv)
- [Source code guide](./source/README.md)
- [Report scope](./report/README.md)
- [GitHub Repository](https://github.com/soybeanmilk0514-jpg/TCAD-PMOS-Process-Optimization)
