v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2220 -1020 2250 -1020 { lab=GND}
N 2250 -1080 2250 -1020 { lab=GND}
N 2220 -1080 2250 -1080 { lab=GND}
N 2220 -990 2220 -970 { lab=Vd}
N 2160 -940 2180 -940 { lab=Vd}
N 2160 -970 2160 -940 { lab=Vd}
N 2160 -970 2220 -970 { lab=Vd}
N 2220 -890 2220 -870 { lab=Vg}
N 2130 -870 2220 -870 { lab=Vg}
N 2130 -1020 2130 -870 { lab=Vg}
N 2130 -1020 2180 -1020 { lab=Vg}
N 2220 -1080 2220 -1050 { lab=GND}
N 2220 -870 2220 -840 { lab=Vg}
N 2070 -960 2070 -900 { lab=Vdref}
N 2070 -900 2180 -900 { lab=Vdref}
N 2180 -1080 2220 -1080 { lab=GND}
N 2070 -1080 2070 -1020 { lab=GND}
N 2220 -780 2220 -740 { lab=#net1}
N 2220 -740 2330 -740 { lab=#net1}
N 2250 -1080 2330 -1080 { lab=GND}
N 2220 -970 2220 -950 { lab=Vd}
N 2070 -1080 2180 -1080 { lab=GND}
N 2330 -780 2330 -740 { lab=#net1}
N 2330 -1080 2330 -840 { lab=GND}
N 2100 -1080 2100 -1060 {}
C {devices/code.sym} 1680 -760 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 1440 -1430 0 0 {name=NGSPICE only_toplevel=true value="* simulation directives
.option wnflag=1 
.option savecurrents
.dc Vdref \{vdmin\} \{vdmax\} \{vdinc\} Id \{imin\} \{imax\} \{iinc\}
.control
save all
run
let dVd = Vd-Vdref
let gm_go = -deriv(Vd)/deriv(Vg)
plot dVd vs Vdref
plot Vg vs Vd
plot gm_go vs Vd
remzerovec
write pfet_g5v0d10v5_gotest.raw
alterparam l=0.2
reset
set appendwrite
run
let dVd = Vd-Vdref
let gm_go = -deriv(Vd)/deriv(Vg)
plot dVd vs Vdref
plot Vg vs Vd
plot gm_go vs Vd
remzerovec
write pfet_g5v0d10v5_gotest.raw
.endc
" }
C {devices/code_shown.sym} 2110 -1430 0 0 {name=params only_toplevel=false value="* device parameters
.param id     = 10n
.param vdref  = 200m
.param l      = 0.5
.param w      = 1
.param nf     = 1
.param egain  = 100k
* simulation parameters
.param vdmin     = 1m
.param vdmax     = 2
.param vdinc     = 1m
.param imin      = 10n
.param imax      = 40n
.param iinc      = 10n
"}
C {devices/vcvs.sym} 2220 -920 0 0 {name=Evgd value=\{-egain\}}
C {devices/isource.sym} 2220 -810 0 1 {name=Id value=\{id\}}
C {devices/vsource.sym} 2070 -990 0 1 {name=Vdref value=\{vdref\}}
C {devices/gnd.sym} 2100 -1060 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 2130 -930 2 1 {name=l2 sig_type=std_logic lab=Vg}
C {devices/lab_pin.sym} 2160 -960 2 1 {name=l3 sig_type=std_logic lab=Vd}
C {devices/lab_pin.sym} 2070 -930 2 1 {name=l4 sig_type=std_logic lab=Vdref}
C {devices/vsource.sym} 2330 -810 2 1 {name=Vidsense value=0.0}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2200 -1020 0 0 {name=M1
L=\{l\}
W=\{w\}
nf=\{nf\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
