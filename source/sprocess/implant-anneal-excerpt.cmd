# Excerpt transcribed from report page 28; NOT a standalone simulation deck.
# Original project and tool time-unit convention must be checked before reuse.

implant BF2 dose= @LDD_Dose@ energy= @LDD_E@

deposit Nitride type= isotropic thickness= 0.3*@Lg@
etch Nitride type= anisotropic thickness= 0.35*@Lg@

implant BF2 dose= @SD_Dose@ energy= @SD_E@
diffuse time= @RTA@ temperature= 1000
