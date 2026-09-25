# 08. Limitations and Next Steps

## Limitations

### 1. Sequential Search

각 단계에서 후보를 줄인 뒤 다음 변수로 이동했기 때문에 앞 단계에서 제외한 조건이 다른 변수와 결합했을 때 더 좋은 결과를 만들 가능성은 평가하지 못했습니다.

따라서 최종 조건은 **평가한 split 범위에서 선택한 후보**이며 global optimum을 의미하지 않습니다.

### 2. RTA Time Unit

보고서 본문에는 RTA를 1~5 s로 설명하지만 캡처된 command는 `diffuse time= @RTA@ temperature= 1000`으로 표시되어 있습니다. 원본 입력 파일과 사용 버전의 단위 규약을 확인하기 전에는 실제 시간 단위를 독립적으로 검증할 수 없습니다.

### 3. Metric Extraction Scope

원본 SVisual extraction script 전체가 남아 있지 않아 보고서에 정의된 Vg 지점과 최종 표의 실제 자동 추출 방식이 정확히 동일한지는 재실행 검증이 필요합니다.

### 4. DIBL and Punch-through

두 drain bias에서 얻은 Vtgm 값만으로 DIBL이나 punch-through가 충분히 억제됐다고 단정하지 않았습니다.

### 5. Very Small Ioff

매우 작은 leakage current는 physics model, mesh, numerical convergence 설정의 영향을 받을 수 있으므로 실측 소자의 절대적인 leakage 성능으로 일반화하지 않습니다.

## Next Steps

1. 주요 변수 주변에서 joint DOE 또는 full-factorial 탐색
2. DIBL, electric field, junction depth 등 추가 지표 비교
3. 전체 SProcess / SDevice / SVisual 입력 파일 보존
4. 조건별 결과를 자동 수집하는 Python 후처리 구성
5. process variation을 고려한 sensitivity 분석

## What Was Learned

공정 조건 최적화에서는 하나의 성능 지표만 보는 것보다 drive current, leakage current, SS의 trade-off를 함께 봐야 했습니다. 또한 단계별 탐색에서 어떤 후보를 남기느냐가 최종 결과에 직접 영향을 준다는 점을 확인했습니다.

**Summary:**  
The main limitation is the sequential search and incomplete preservation of the original execution files; broader joint DOE and full source archiving would improve reproducibility.
