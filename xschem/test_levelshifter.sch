v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 680 -180 900 -180 {
lab=GND}
N 700 -480 900 -480 {
lab=dda}
N 700 -480 700 -440 {
lab=dda}
N 660 -480 660 -440 {
lab=ddd}
N 400 -480 660 -480 {
lab=ddd}
N 520 -400 520 -320 {
lab=in}
N 520 -400 620 -400 {
lab=in}
N 520 -260 520 -180 {
lab=GND}
N 680 -360 680 -180 {
lab=GND}
N 740 -380 780 -380 {
lab=Qb}
N 740 -420 780 -420 {
lab=Q}
N 400 -180 400 -120 {
lab=GND}
N 400 -480 400 -460 {
lab=ddd}
N 900 -480 900 -460 {
lab=dda}
N 900 -400 900 -180 {
lab=GND}
N 400 -400 400 -180 {
lab=GND}
N 400 -180 520 -180 {
lab=GND}
N 520 -180 680 -180 {
lab=GND}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {devices/gnd.sym} 400 -120 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 400 -430 0 0 {name=Vddd value=\{dvdd\} savecurrent=true}
C {devices/vsource.sym} 900 -430 0 0 {name=Vdda value=\{avdd\} savecurrent=true}
C {devices/vsource.sym} 520 -290 0 0 {name=Vin value="DC \{vindc\} PULSE(0 \{dvdd\} \{delay\} \{rise\} \{fall\} \{width\} \{period\})" savecurrent=true}
C {devices/code_shown.sym} 1020 -610 0 0 {name=params only_toplevel=false value="* device parameters
* simulation parameters
.param dvdd   = 1.8
.param avdd   = 3.3
.param vindc  = 1.5
.param delay  = 2n
.param rise   = 10p
.param fall   = 10p
.param width  = 4n
.param period = 8n"}
C {devices/code.sym} 110 -230 0 0 {name=FF_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ff

"
spice_ignore=false}
C {devices/code_shown.sym} 40 -610 0 0 {name=NGSPICE only_toplevel=true value="* simulation directives
.option wnflag=1 
*.option savecurrents
.tran 1p 20n 1p
.control
save all
run
write test_levelshifter.raw
.endc
" }
C {devices/lab_pin.sym} 780 -420 0 1 {name=l6 lab=Q}
C {devices/lab_pin.sym} 780 -380 0 1 {name=l7 lab=Qb}
C {devices/lab_wire.sym} 580 -400 0 0 {name=p14 sig_type=std_logic lab=in}
C {devices/lab_wire.sym} 580 -480 0 0 {name=p1 sig_type=std_logic lab=ddd
}
C {devices/lab_wire.sym} 820 -480 0 0 {name=p2 sig_type=std_logic lab=dda}
C {xschem/sky130_cm_levelshifter.sym} 680 -400 0 0 {name=x1}
