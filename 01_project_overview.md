# 01. Project Overview

## 이 페이지에서 확인할 내용

| Item | Description |
|---|---|
| Purpose | NMOS 공정 예제를 PMOS로 변환하고 공정 조건 비교 |
| Method | SProcess / SDevice 조건 변경 후 단계별 split 비교 |
| Metrics | drive current, leakage current, SS, Vtgm |
| Final decision | 세 지표를 함께 고려한 최종 후보 선택 |

## Problem Definition

기존 예제는 NMOS 기준이므로 PMOS를 구현하려면 body와 Source/Drain의 도핑 극성, implant species, gate/drain bias 방향을 함께 변경해야 했습니다.

이 프로젝트에서는 다음 질문을 순서대로 확인했습니다.

1. NMOS 예제를 PMOS 동작에 맞게 어떻게 변환할 것인가?
2. 음의 gate voltage에서 PMOS가 정상적인 transfer characteristic을 보이는가?
3. LDD와 Source/Drain implant 조건은 전기적 특성에 어떤 차이를 만드는가?
4. RTA 조건까지 포함했을 때 어떤 후보가 목표 성능을 만족하는가?
5. 제한된 단계별 탐색 범위에서 어떤 조건을 최종 후보로 선택할 것인가?

## Main Workflow

```text
NMOS baseline
→ PMOS conversion
→ LDD Dose comparison
→ LDD Energy comparison
→ S/D Dose comparison
→ S/D Energy comparison
→ RTA comparison
→ structure / transfer verification
→ final result
```

## Final Result

| Parameter | Final Value |
|---|---:|
| LDD_Dose | `1e13 cm^-2` |
| LDD_E | 4 keV |
| SD_Dose | `7e15 cm^-2` |
| SD_E | 7 keV |
| RTA variable | 1 |
| Temperature | 1000 °C |

| Metric | Result at Vd = -1.0 V |
|---|---:|
| abs(Id) | `1.210e-04 A/µm` |
| abs(Ioff) | `2.581e-16 A/µm` |
| SS | 85.321 mV/dec |
| Vtgm | -1.175 V |

![Final results](../figures/final-results.png)

**Summary:**  
This project combines PMOS process conversion, process-parameter comparison, structural verification, and electrical-result evaluation.
