
* conventional JLFET
.OPTION POST
.param vdd=1
*.param lm=24e-7  wn=2e-4  wp=1e-4
.hdl NFET.va
.hdl PFET.va
.options list post node=1
.subckt inverter Vin Vout Vvdd Vgnd

X0 Vout Vin Vgnd NFET W=1
X1 Vout Vin Vvdd PFET W=1

.ends
*** circuit layout
Vsup sup 0 1
Vin  in 0 0.1
X2 in out sup 0 inverter

*** simulation                                                                                                                                                                                                                            

.op
.dc Vin 0 1 0.01
.options post
.end