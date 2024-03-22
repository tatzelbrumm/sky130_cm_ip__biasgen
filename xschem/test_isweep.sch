v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1200 -180 1200 -140 {
lab=GND}
N 1200 -140 1300 -140 {
lab=GND}
N 460 -270 460 -140 {
lab=GND}
N 1040 -180 1040 -140 {
lab=GND}
N 1200 -260 1200 -240 {
lab=res}
N 1300 -180 1300 -140 {
lab=GND}
N 1300 -260 1300 -240 {
lab=ofs}
N 780 -140 1040 -140 {
lab=GND}
N 460 -140 460 -120 {
lab=GND}
N 1040 -140 1200 -140 {
lab=GND}
N 460 -800 460 -330 {
lab=vdda}
N 460 -800 720 -800 {
lab=vdda}
N 720 -800 720 -640 {
lab=vdda}
N 720 -320 800 -320 {
lab=in}
N 460 -140 780 -140 {
lab=GND}
N 720 -580 720 -320 {
lab=in}
N 780 -380 800 -380 {
lab=vdda}
N 780 -800 780 -380 {
lab=vdda}
N 780 -300 800 -300 {
lab=GND}
N 780 -300 780 -140 {
lab=GND}
N 960 -320 1040 -320 {
lab=out}
N 1040 -320 1040 -240 {
lab=out}
N 960 -360 1040 -360 {
lab=vpb}
N 960 -340 1040 -340 {
lab=vpc}
N 720 -800 780 -800 {}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {devices/code_shown.sym} 1540 -890 0 0 {name=params only_toplevel=false value="* device parameters
.param l      = 8
.param w      = 2
.param nf     = 1
.param lc     = 0.5
.param wc     = 2
.param nfc    = 1
.param lb     = 18
.param wb     = 1
.param nfb    = 1
.param lnmos  = 8
.param wnmos  = 2
.param nfn    = 1
* instrumentation parameters
.param avdd   = 3.3
.param ibias  = 50n
.param rload  = 100k
.param vofs   = 1
* simulation parameters
.param imin   = 50n
.param imax   = 1u
.param iinc   = 50n"}
C {devices/gnd.sym} 460 -120 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 460 -300 0 0 {name=Vdda value=\{avdd\} savecurrent=true}
C {devices/isource.sym} 720 -610 0 1 {name=Ibias value=\{ibias\}}
C {devices/vsource.sym} 1200 -210 0 0 {name=Vres value=\{rload\} savecurrent=false}
C {devices/asrc.sym} 1040 -210 0 0 {name=Bload function="i=(v(out)-v(ofs))/v(res)"}
C {devices/lab_pin.sym} 1200 -260 0 1 {name=l5 lab=res}
C {devices/lab_pin.sym} 1040 -280 0 1 {name=l3 lab=out}
C {devices/lab_wire.sym} 560 -800 0 1 {name=p7 lab=vdda
}
C {devices/vsource.sym} 1300 -210 0 0 {name=Vofs value=\{vofs\} savecurrent=false}
C {devices/lab_pin.sym} 1300 -260 0 1 {name=l4 lab=ofs}
C {devices/code.sym} 30 -220 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 80 -890 0 0 {name=NGSPICE only_toplevel=true value="* simulation directives
.option wnflag=1 
.option savecurrents
.dc Ibias \{imin\} \{imax\} \{iinc\}
.control
save all
run
let dI=@bload[i]-@ibias[current]
let dI_I=dI/@ibias[current]
write test_isweep.raw
.endc
" }
C {devices/lab_wire.sym} 770 -320 0 0 {name=p3 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 1040 -360 0 1 {name=l6 lab=vpb}
C {devices/lab_pin.sym} 1040 -340 0 1 {name=l7 lab=vpc}
C {xschem/sky130_cm_ip__biasgen.sym} 880 -340 0 0 {name=x1 l=8 w=2 nf=1 lc=0.5 wc=2 nfc=1 lb=18 wb=1 nfb=1 lnmos=8 wnmos=2 nfnmos=1}
