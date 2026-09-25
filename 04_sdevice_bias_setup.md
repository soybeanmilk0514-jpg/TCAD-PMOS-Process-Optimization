# 04. SDevice Bias Setup

## PMOS Bias Direction

| Bias | Configuration |
|---|---|
| Gate sweep | 0 → -2.5 V |
| Drain condition in final table | -0.05 V, -1.0 V |
| On-current reference | Vg = -2.5 V |
| Off-current reference | Vg = 0 V |

PMOS에서는 gate voltage가 음의 방향으로 증가할수록 hole channel이 형성되고 drain current의 크기가 증가합니다.

![Transfer curve](../figures/report-page-30.png)

## Verification

최종 결과에서 Vd = -1.0 V 조건의 전류 크기가 Vd = -0.05 V보다 크게 나타났고, gate voltage가 0 V에서 -2.5 V 방향으로 이동할수록 on-state가 형성되는 경향을 확인했습니다.

원본 SDevice 입력 파일 전체는 확보되어 있지 않기 때문에, 저장소에는 보고서에서 검증 가능한 bias 조건과 결과만 기록합니다.

[Source scope](../source/sdevice/README.md)

**Summary:**  
The electrical setup uses negative gate and drain biases consistent with PMOS operation.
