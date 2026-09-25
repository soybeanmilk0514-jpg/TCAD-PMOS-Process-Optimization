# 07. Final Results

## Electrical Results

| Vd (V) | Vtgm (V) | Id (A/µm) | Ioff (A/µm) | SS (mV/dec) |
|---:|---:|---:|---:|---:|
| -1.00 | -1.175 | -1.210e-04 | -2.581e-16 | 85.321 |
| -0.05 | -0.858 | -1.155e-05 | -9.064e-17 | 88.308 |

PMOS drain current는 부호가 음수로 표현되므로 목표 기준과 비교할 때는 전류의 크기를 사용했습니다.

## Target Check at Vd = -1.0 V

| Metric | Result | Target | Check |
|---|---:|---:|---|
| abs(Id) | `1.210e-04 A/µm` | `> 1e-5` | Pass |
| abs(Ioff) | `2.581e-16 A/µm` | `< 1e-14` | Pass |
| SS | 85.321 mV/dec | `< 100` | Pass |
| Vtgm | -1.175 V | reference | - |

![Final table](../figures/final-results.png)

## Structure and Transfer Curve

![Final structure](../figures/report-page-29.png)

![Transfer curve](../figures/report-page-30.png)

## Data

- [Final results CSV](../results/final_results.csv)

**Summary:**  
The selected condition satisfies the reported drive-current, leakage-current, and subthreshold-swing targets at Vd = -1.0 V.
