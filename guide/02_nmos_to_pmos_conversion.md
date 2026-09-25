# 02. nMOS-to-PMOS Conversion

## Conversion Summary

| NMOS Configuration | PMOS Configuration | Reason |
|---|---|---|
| Boron-based body condition | Phosphorus-based N-type body | p-channel 형성을 위한 N-type body |
| n-type LDD/S-D implant | BF₂ LDD/S-D implant | p-type extension 및 p+ Source/Drain 형성 |
| Positive gate bias | Negative gate bias | hole channel 형성 |
| Positive drain bias direction | Negative drain bias direction | PMOS 동작 조건 |
| Signed drain current | current magnitude for comparison | PMOS 전류 부호와 관계없이 성능 크기 비교 |

PMOS 변환은 단순히 전압 부호 하나를 바꾸는 작업이 아니라, body와 Source/Drain 극성 및 bias 방향을 함께 맞추는 작업입니다.

## Electrical Direction

![PMOS transfer curve](../figures/report-page-30.png)

보고서의 transfer curve에서는 gate voltage가 음의 방향으로 이동할수록 drain current의 크기가 증가합니다.

## Final Structure

![Final PMOS structure](../figures/report-page-29.png)

최종 구조에서는 gate, LDD, spacer, Source/Drain, Al electrode가 형성된 PMOS 단면을 확인했습니다.

**Summary:**  
The conversion changes the body type, implant species, and electrical bias direction required for PMOS operation.
