v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2200 -980 2230 -980 { lab=GND}
N 2230 -1040 2230 -980 { lab=GND}
N 2200 -1040 2230 -1040 { lab=GND}
N 2200 -950 2200 -930 { lab=Vd}
N 2140 -900 2160 -900 { lab=Vd}
N 2140 -930 2140 -900 { lab=Vd}
N 2140 -930 2200 -930 { lab=Vd}
N 2200 -850 2200 -830 { lab=Vg}
N 2110 -830 2200 -830 { lab=Vg}
N 2110 -980 2110 -830 { lab=Vg}
N 2110 -980 2160 -980 { lab=Vg}
N 2200 -1040 2200 -1010 { lab=GND}
N 2200 -830 2200 -800 { lab=Vg}
N 2050 -920 2050 -860 { lab=Vdref}
N 2050 -860 2160 -860 { lab=Vdref}
N 2160 -1040 2200 -1040 { lab=GND}
N 2050 -1040 2050 -980 { lab=GND}
N 2200 -740 2200 -700 { lab=#net1}
N 2200 -700 2310 -700 { lab=#net1}
N 2230 -1040 2310 -1040 { lab=GND}
N 2200 -930 2200 -910 { lab=Vd}
N 2050 -1040 2160 -1040 { lab=GND}
N 2310 -740 2310 -700 { lab=#net1}
N 2310 -1040 2310 -800 { lab=GND}
N 2080 -1040 2080 -1020 {
lab=GND}
C {devices/vcvs.sym} 2200 -880 0 0 {name=Evgd value=\{-egain\}}
C {devices/isource.sym} 2200 -770 0 1 {name=Id value=\{id\}}
C {devices/vsource.sym} 2050 -950 0 1 {name=Vdref value=\{vdref\}}
C {devices/gnd.sym} 2080 -1020 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 2110 -890 2 1 {name=l2 sig_type=std_logic lab=Vg}
C {devices/lab_pin.sym} 2140 -920 2 1 {name=l3 sig_type=std_logic lab=Vd}
C {devices/lab_pin.sym} 2050 -890 2 1 {name=l4 sig_type=std_logic lab=Vdref}
C {devices/code.sym} 1680 -760 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 1540 -1430 0 0 {name=NGSPICE only_toplevel=true value="* simulation directives
.option wnflag=1 
.option savecurrents
.dc Id \{imin\} \{imax\} \{iinc\} Vdref \{vdmin\} \{vdmax\} \{vdinc\}
.control
save all
run
let gm = deriv(Vidsense#branch)/deriv(Vg)
let gm_id = gm/Vidsense#branch
plot Vg vs Vidsense#branch
plot gm vs Vidsense#branch
plot xlog gm_id vs Vidsense#branch
remzerovec
write pfet_g5v0d10v5_gmtest.raw
alterparam l=2
reset
set appendwrite
run
let gm = deriv(Vidsense#branch)/deriv(Vg)
let gm_id = gm/Vidsense#branch
plot Vg vs Vidsense#branch
plot gm vs Vidsense#branch
plot xlog gm_id vs Vidsense#branch
remzerovec
write pfet_g5v0d10v5_gmtest.raw
.endc
" }
C {devices/vsource.sym} 2310 -770 2 1 {name=Vidsense value=0.0}
C {devices/code_shown.sym} 2100 -1430 0 0 {name=params only_toplevel=false value="* device parameters
.param id     = 10n
.param vdref  = 200m
.param l      = 8
.param w      = 2
.param nf     = 1
.param egain  = 1meg
* simulation parameters
.param imin      = 1n
.param imax      = 1u
.param iinc      = 1n
.param vdmin     = 100m
.param vdmax     = 400m
.param vdinc     = 100m
"}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2180 -980 0 0 {name=M1
L=\{l\}
W=\{w\}
nf=\{nf\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
