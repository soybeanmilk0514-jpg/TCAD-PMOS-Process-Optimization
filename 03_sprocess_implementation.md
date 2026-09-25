# 03. SProcess Implementation

## Main Process Parameters

| Parameter | Role | Final Value |
|---|---|---:|
| NWell | PMOS body condition | `1e17 cm^-3` |
| LDD_Dose | LDD implantation dose | `1e13 cm^-2` |
| LDD_E | LDD implantation energy | 4 keV |
| SD_Dose | Source/Drain implantation dose | `7e15 cm^-2` |
| SD_E | Source/Drain implantation energy | 7 keV |
| RTA | annealing variable | 1 |
| Temperature | annealing temperature | 1000 °C |

## Command Excerpt

```text
implant BF2 dose= @LDD_Dose@ energy= @LDD_E@

deposit Nitride type= isotropic thickness= 0.3*@Lg@
etch Nitride type= anisotropic thickness= 0.35*@Lg@

implant BF2 dose= @SD_Dose@ energy= @SD_E@
diffuse time= @RTA@ temperature= 1000
```

[원본 발췌 파일](../source/sprocess/implant-anneal-excerpt.cmd)

이 파일은 전체 mesh, geometry, electrode, physics를 포함하는 완전한 simulation deck이 아닙니다.

## Process Meaning

- LDD implant는 gate edge 부근 extension 영역을 형성합니다.
- Nitride spacer는 이후 Source/Drain implant 위치를 조절합니다.
- 높은 dose의 BF₂ implant로 p+ Source/Drain 영역을 형성합니다.
- anneal 단계는 implanted dopant의 활성화와 확산에 영향을 줍니다.

**Summary:**  
The SProcess changes focus on BF₂ LDD/Source-Drain implantation and the subsequent annealing condition.
