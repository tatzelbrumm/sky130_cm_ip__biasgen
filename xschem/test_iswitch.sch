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
N 1040 -180 1040 -140 {
lab=GND}
N 1200 -260 1200 -240 {
lab=res}
N 1300 -180 1300 -140 {
lab=GND}
N 1300 -260 1300 -240 {
lab=ofs}
N 880 -140 1040 -140 {
lab=GND}
N 460 -140 460 -120 {
lab=GND}
N 1040 -140 1200 -140 {
lab=GND}
N 460 -540 460 -240 {
lab=vdda}
N 460 -540 720 -540 {
lab=vdda}
N 720 -360 800 -360 {
lab=in}
N 960 -320 1040 -320 {
lab=out}
N 1040 -320 1040 -240 {
lab=out}
N 960 -360 1040 -360 {
lab=vpb}
N 960 -340 1040 -340 {
lab=vpc}
N 720 -540 900 -540 {
lab=vdda}
N 880 -280 880 -140 {
lab=GND}
N 900 -540 900 -400 {
lab=vdda}
N 720 -540 720 -460 {
lab=vdda}
N 720 -400 720 -360 {
lab=in}
N 860 -500 860 -400 {
lab=vddd}
N 540 -500 860 -500 {
lab=vddd}
N 540 -500 540 -240 {
lab=vddd}
N 720 -140 880 -140 {
lab=GND}
N 540 -180 540 -140 {
lab=GND}
N 460 -180 460 -140 {
lab=GND}
N 720 -320 800 -320 {
lab=en}
N 720 -240 720 -140 {
lab=GND}
N 720 -320 720 -300 {
lab=en}
N 460 -140 540 -140 {
lab=GND}
N 540 -140 720 -140 {
lab=GND}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {devices/code_shown.sym} 1120 -890 0 0 {name=params only_toplevel=false value="* device parameters
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
.param dvdd   = 1.8
.param ibias  = 50n
.param rload  = 100k
.param vofs   = 1
* simulation parameters
.param imin   = 100n
.param imax   = 1u
.param wait   = 100u
.param attack = 200u
.param decay  = 200u
.param sustain= 100u
.param cycle  = 600u
.param td     = 10u
.param tr     = 1n
.param tf     = 1n
.param ton    = 2u
.param tcyc   = 20u
.param tres   = 10n"}
C {devices/gnd.sym} 460 -120 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 460 -210 0 0 {name=Vdda value=\{avdd\} savecurrent=true}
C {devices/isource.sym} 720 -430 0 1 {name=Ibias value="DC \{ibias\} PULSE(\{imax\} \{imin\} \{wait\} \{attack\} \{decay\} \{sustain\} \{cycle\})"}
C {devices/vsource.sym} 1200 -210 0 0 {name=Vres value=\{rload\} savecurrent=false}
C {devices/asrc.sym} 1040 -210 0 0 {name=Bload function="i=(v(out)-v(ofs))/v(res)"}
C {devices/lab_pin.sym} 1200 -260 0 1 {name=l5 lab=res}
C {devices/lab_pin.sym} 1040 -280 0 1 {name=l3 lab=out}
C {devices/lab_wire.sym} 560 -540 0 1 {name=p7 lab=vdda
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
.options gmin=1e-15 abstol=1p
.option savecurrents
.tran \{tres\} \{2*cycle\} \{tres\}
.control
save all
run
let dI=@bload[i]-@ibias[current]
let dI_I=dI/@ibias[current]
write test_iswitch.raw
.endc
" }
C {devices/lab_wire.sym} 770 -360 0 0 {name=p3 lab=in}
C {devices/lab_pin.sym} 1040 -360 0 1 {name=l6 lab=vpb}
C {devices/lab_pin.sym} 1040 -340 0 1 {name=l7 lab=vpc}
C {xschem/sky130_cm_ip__biasgen.sym} 880 -340 0 0 {name=xDUT l=8 w=2 nf=1 lc=0.5 wc=2 nfc=1 lb=18 wb=1 nfb=1 lnmos=8 wnmos=2 nfnmos=1}
C {devices/vsource.sym} 540 -210 0 0 {name=Vddd value=\{dvdd\} savecurrent=true}
C {devices/lab_wire.sym} 560 -500 0 1 {name=p1 lab=vddd
}
C {devices/vsource.sym} 720 -270 0 1 {name=Ven value="DC \{dvdd\} PULSE(\{dvdd\} 0 \{td\} \{tr\} \{tf\} \{ton\} \{tcyc\})" savecurrent=true}
C {devices/lab_wire.sym} 770 -320 0 0 {name=p2 lab=en}
