# Study Notes

## LDD

Lightly Doped Drain 구조는 channel–drain 경계의 전기장을 완화하기 위해 deep Source/Drain보다 낮은 dose의 extension 영역을 형성하는 방식이다.

본 PMOS 프로젝트에서는 p-type extension을 위해 BF₂ implantation을 사용했다.

## Implant Dose

Dose는 단위 면적당 주입되는 이온의 총량이다.

Dose가 커지면 junction / extension의 dopant concentration이 증가하지만, leakage와 short-channel behavior에도 영향을 줄 수 있다.

## Implant Energy

Energy는 implantation depth profile에 영향을 준다.

같은 dose라도 energy가 달라지면 dopant peak 위치와 junction shape이 달라질 수 있다.

## Annealing

Ion implantation 이후 annealing은 dopant activation과 implantation damage recovery에 필요하다.

동시에 diffusion이 발생하므로 junction depth와 lateral diffusion도 바뀔 수 있다.

## PMOS Bias

PMOS transfer characteristic에서는 gate voltage를 음의 방향으로 sweep하고 drain bias 역시 음의 값으로 설정했다.

보고서 비교에서는 current sign과 별개로 성능 비교를 위해 current magnitude를 사용했다.

## Subthreshold Swing

SS는 subthreshold 영역에서 drain current가 한 decade 변할 때 필요한 gate-voltage 변화량이다.

낮을수록 gate electrostatic control이 더 가파르다는 의미다.
