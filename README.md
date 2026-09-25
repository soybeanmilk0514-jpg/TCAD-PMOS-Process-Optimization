# PMOS 공정 조건 최적화

**주수빈 | 숭실대학교 신소재공학과 | 2026.04 | 반도체집적공정 중간 프로젝트**

NMOS 공정 예제를 PMOS 구조와 바이어스 조건으로 변경하고, LDD와 Source/Drain의 이온주입 조건 및 열처리 변수를 단계적으로 비교한 TCAD 프로젝트입니다. 구동 전류, 누설 전류, Subthreshold Swing(SS)을 함께 고려해 탐색한 조건 중 최종 후보를 선정했습니다.

> 이 저장소는 제출한 중간보고서를 바탕으로 정리한 포트폴리오입니다. 수치와 이미지는 보고서에서 확인했으며, 시뮬레이션을 새로 실행한 결과가 아닙니다. 원본 실행 프로젝트는 포함되어 있지 않습니다.

**Summary:** A coursework TCAD study converting an NMOS example to PMOS and selecting implantation and annealing parameters through staged comparisons of drive current, leakage current, and subthreshold swing.

## 핵심 결과

보고서 28쪽 최종 표의 값을 전사했습니다. PMOS 전류는 부호가 음수이므로 목표와 비교할 때 크기(절댓값)를 사용했습니다.

| 항목 | 목표 | 최종 결과 (Vd = -1.0 V) |
|---|---:|---:|
| 구동 전류 크기, abs(Id) | > 1×10⁻⁵ A/µm | 1.210×10⁻⁴ A/µm |
| 누설 전류 크기, abs(Ioff) | < 1×10⁻¹⁴ A/µm | 2.581×10⁻¹⁶ A/µm |
| SS | < 100 mV/dec | 85.321 mV/dec |
| Vtgm | 별도 수치 목표 없음 | -1.175 V |

보고서에서 정의한 구동 전류의 게이트 전압은 -2.5 V, 누설 전류의 게이트 전압은 0 V입니다. 추출 코드는 제공되지 않아 해당 정의와 표의 실제 추출 방식이 일치하는지는 원본 코드 확인이 필요합니다. 위 전류 크기로 계산한 비율은 약 **4.688×10¹¹**입니다.

![보고서 최종 조건 및 결과 표](figures/final-results.png)

## 최종 선정 조건

| 변수 | 선정값 | 표기 및 근거 |
|---|---:|---|
| Lg | 0.25 | 보고서 고정값; 길이 단위는 원본 코드 확인 필요 |
| NWell | 1×10¹⁷ | 체적 도핑 농도, cm⁻³ |
| GOxTime | 10 | 산화 시간 변수; 단위는 원본 코드 확인 필요 |
| LDD_Dose | 1×10¹³ cm⁻² | BF₂ 이온주입량 |
| LDD_E | 4 keV | LDD 주입 에너지 |
| SD_Dose | 7×10¹⁵ cm⁻² | BF₂ 이온주입량 |
| SD_E | 7 keV | S/D 주입 에너지 |
| RTA | 1 | 보고서에는 1 s로 설명; 캡처 코드에는 명시 단위 없음 |
| 열처리 온도 | 1000 °C | 보고서의 SProcess 코드 캡처 |
| Vg sweep | 0 → -2.5 V | PMOS 게이트 바이어스 |

Dose는 단위 면적당 이온주입량이며, NWell의 체적 농도와 구분했습니다.

## 수행 내용

- 기판 도펀트를 Boron에서 Phosphorus로 변경해 N형 body 조건 설정
- LDD와 S/D 주입 도펀트를 BF₂로 변경해 P형 접합 구성
- PMOS 동작에 맞춰 음의 게이트 전압 sweep 적용
- LDD 주입량 → LDD 에너지 → S/D 주입량 → S/D 에너지 → RTA 순서로 조건 비교
- 초기 단계에서 복수 후보를 유지하고 Ion/Ioff와 SS를 함께 비교해 최종 조건 선정
- 도핑 분포, transfer curve 및 12개 공정 단계의 TDR 구조 확인

## 조건 선정 과정

| 단계 | 탐색값 | 다음 단계로 유지한 조건 |
|---|---|---|
| LDD Dose | 1~9×10¹³ cm⁻², 1×10¹³ 간격 | 1, 2, 3×10¹³ cm⁻² |
| LDD Energy | 2, 4, 6, 8 keV | Dose 1×10¹³에서 4, 6, 8 keV |
| S/D Dose | 6, 7, 8, 9×10¹⁵, 1, 2×10¹⁶ cm⁻² | LDD 4 keV + S/D 7×10¹⁵ cm⁻² |
| S/D Energy | 5, 6, 7, 8, 9 keV | 7 keV |
| RTA 변수 | 1, 2, 3, 4, 5 | 1 |

S/D 에너지 7 keV는 SS 단독 최솟값이 아니라 **Ion/Ioff와 SS를 함께 고려한 선택**입니다. 순차 탐색으로 얻은 결과이므로 전체 변수 조합에 대한 전역 최적해로 해석하지 않았습니다.

## 상세 자료

- [프로젝트 범위와 PMOS 전환](docs/01-overview.md)
- [단계별 탐색 과정과 근거 이미지](docs/02-optimization.md)
- [결과 해석 및 확인이 필요한 사항](docs/03-results-and-limitations.md)
- [12단계 공정 시각화](docs/04-process-flow.md)
- [최종 수치 CSV](results/final-results.csv)
- [코드 발췌 안내](source/README.md)
- [원본 보고서 안내](report/README.md)

## 사용 도구

Sentaurus TCAD의 SProcess / SDevice / SVisual, Excel. 보고서의 도구 명칭과 코드 형식에 근거했으며 소프트웨어 버전은 확인되지 않았습니다.

## 배운 점

주입량과 에너지를 높이는 것이 모든 지표의 개선으로 이어지지는 않았습니다. 구동 전류를 확보하면서 누설 전류와 SS를 함께 확인해야 했고, 다음 공정 변수와의 조합을 고려해 초기 단계에서 후보를 여러 개 유지했습니다. 공정 조건의 변화가 도핑 분포와 전기적 특성에 어떻게 나타나는지 연결해서 비교한 경험입니다.
