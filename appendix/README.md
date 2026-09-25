# Appendix — Project Evidence Notes

## Project Type

2026년 4월 반도체집적공정 수업 중간 프로젝트.

## Evidence Included

- final PMOS result table
- transfer curve
- final structure
- process-flow screenshots
- optimization-stage screenshots
- SProcess implant / spacer / anneal excerpt
- final result CSV

## Important Limits

### Sequential Search

LDD Dose → LDD Energy → S/D Dose → S/D Energy → RTA 순서로 후보를 줄였으므로 joint global optimization은 아니다.

### RTA Unit

본문에서는 seconds로 설명되지만 보존된 command에서는 `time=@RTA@`만 확인돼, 원본 tool convention 없이는 단위를 독립 검증하기 어렵다.

### Electrical Extraction

원본 SVisual extraction code 전체가 보존되지 않았다.

따라서 보고서 수치는 그대로 기록하되 extraction algorithm을 새로 만들어 같은 값이라고 주장하지 않는다.

## Portfolio Goal

프로젝트의 가치는 완벽한 device optimization을 주장하는 데 있지 않고, **process parameter → device structure → electrical metric**의 연결을 TCAD에서 단계적으로 분석한 경험을 보여주는 데 있다.
