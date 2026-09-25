# 06. Process Optimization

## Optimization Strategy

전체 변수 조합을 동시에 탐색한 것이 아니라, 한 단계에서 유망한 후보를 남긴 뒤 다음 공정 변수로 넘어가는 순차 탐색을 사용했습니다.

```text
LDD Dose
→ LDD Energy
→ Source/Drain Dose
→ Source/Drain Energy
→ RTA
```

## 1. LDD Dose

`1e13 ~ 9e13 cm^-2` 범위를 비교했습니다. `1e13 cm^-2`가 유리했으며 이후 변수와의 조합을 보기 위해 `2e13`, `3e13 cm^-2`도 후보로 유지했습니다.

![LDD Dose](../figures/report-page-20.png)

## 2. LDD Energy

2, 4, 6, 8 keV를 비교했고, LDD Dose = `1e13 cm^-2` 조건에서 4, 6, 8 keV를 다음 단계 후보로 유지했습니다.

![LDD Energy](../figures/report-page-23.png)

## 3. Source/Drain Dose

`6e15, 7e15, 8e15, 9e15, 1e16, 2e16 cm^-2`를 비교했습니다. 이후 LDD_E = 4 keV, SD_Dose = `7e15 cm^-2` 조합을 선택했습니다.

![S/D Dose](../figures/report-page-25.png)

## 4. Source/Drain Energy

5~9 keV를 비교했고 7 keV를 선택했습니다. 이는 SS 하나만의 최솟값이 아니라 drive/leakage 특성과 SS를 함께 고려한 결과입니다.

![S/D Energy](../figures/report-page-27.png)

## 5. RTA

RTA 변수 1~5를 비교해 최종적으로 1을 선택했습니다.

![RTA](../figures/report-page-28.png)

## Final Condition

| Parameter | Final |
|---|---:|
| LDD_Dose | `1e13 cm^-2` |
| LDD_E | 4 keV |
| SD_Dose | `7e15 cm^-2` |
| SD_E | 7 keV |
| RTA | 1 |

이 결과는 모든 가능한 조합의 global optimum이 아니라 보고서에서 평가한 순차적 split 범위에서 얻은 최종 후보입니다.

**Summary:**  
A sequential parameter search was used to narrow the process conditions while considering drive current, leakage current, and SS together.
