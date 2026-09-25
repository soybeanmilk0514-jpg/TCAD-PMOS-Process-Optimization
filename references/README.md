# References & Source Basis

이 저장소의 핵심 수치와 이미지는 사용자가 2026년 4월 제출한 **「반도체집적공정 중간보고서」**를 기준으로 정리했다.

## Primary Source

주수빈, 「반도체집적공정 중간보고서」, 숭실대학교, 2026.04.

## Public Scope

원본 전체 PDF는 학번이 포함된 표지와 별도 NMOS 실습 내용을 포함하고 있어 저장소에 그대로 공개하지 않았다.

대신 PMOS 분석과 직접 관련된 페이지 이미지만 `figures/`에 포함하고, 보고서에서 확인 가능한 command와 final-result table을 source/data 형태로 재구성했다.

## Interpretation Rule

보고서에 없는:

- 완전한 SProcess / SDevice / SVisual deck
- extraction Tcl 전체
- independent rerun
- full-factorial DOE

를 임의로 만들어 넣지 않았다.
