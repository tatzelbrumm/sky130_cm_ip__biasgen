v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2160 -750 2190 -750 { lab=GND}
N 2190 -750 2190 -690 { lab=GND}
N 2160 -690 2190 -690 { lab=GND}
N 2160 -800 2160 -780 { lab=Vd}
N 2100 -830 2120 -830 { lab=Vd}
N 2100 -830 2100 -800 { lab=Vd}
N 2100 -800 2160 -800 { lab=Vd}
N 2160 -900 2160 -880 { lab=Vg}
N 2070 -900 2160 -900 { lab=Vg}
N 2070 -900 2070 -750 { lab=Vg}
N 2070 -750 2120 -750 { lab=Vg}
N 2160 -720 2160 -690 { lab=GND}
N 2160 -930 2160 -900 { lab=Vg}
N 2010 -870 2010 -810 { lab=Vdref}
N 2010 -870 2120 -870 { lab=Vdref}
N 2120 -690 2160 -690 { lab=GND}
N 2010 -750 2010 -690 { lab=GND}
N 2160 -1030 2160 -990 { lab=#net1}
N 2160 -1030 2270 -1030 { lab=#net1}
N 2190 -690 2270 -690 { lab=GND}
N 2120 -690 2120 -670 { lab=GND}
N 2160 -820 2160 -800 { lab=Vd}
N 2010 -690 2120 -690 { lab=GND}
N 2270 -1030 2270 -990 { lab=#net1}
N 2270 -930 2270 -690 { lab=GND}
C {devices/vcvs.sym} 2160 -850 0 0 {name=Evgd value=\{-egain\}}
C {devices/isource.sym} 2160 -960 0 1 {name=Id value=\{id\}}
C {devices/vsource.sym} 2010 -780 0 1 {name=Vdref value=\{vdref\}}
C {devices/gnd.sym} 2120 -670 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 2070 -840 0 0 {name=l2 sig_type=std_logic lab=Vg}
C {devices/lab_pin.sym} 2100 -810 0 0 {name=l3 sig_type=std_logic lab=Vd}
C {devices/lab_pin.sym} 2010 -840 0 0 {name=l4 sig_type=std_logic lab=Vdref}
C {devices/code.sym} 1680 -760 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice \{corner\}

"
spice_ignore=false}
C {devices/code_shown.sym} 1540 -1430 0 0 {name=NGSPICE only_toplevel=true value="* simulation directives
.option wnflag=1 
.option savecurrents
.dc Id \{id|minimum\} \{id|maximum\} \{iinc\}
.temp \{temperature\}
.control
save all
run
let gm = deriv(Vidsense#branch)/deriv(Vg)
let gm_id = gm/Vidsense#branch
* plot Vg vs Vidsense#branch
* plot gm vs Vidsense#branch
* plot xlog gm_id vs Vidsense#branch
remzerovec
write nfet_01v8_gmtest.raw
set wr_singlescale
wrdata \{simpath\}/\{filename\}_\{N\}.data V(Vg) gm gm_id
quit
.endc
" }
C {devices/vsource.sym} 2270 -960 2 1 {name=Vidsense value=0.0}
C {devices/code_shown.sym} 2100 -1430 0 0 {name=params only_toplevel=false value="* device parameters
.param id     = 10n
.param vdref  = 200m
.param l      = 0.5
.param w      = 1
.param nf     = 1
.param egain  = 10000
* simulation parameters
.param imin      = 1n
.param imax      = 10u
.param iinc      = 1n
"}
C {sky130_fd_pr/nfet_01v8.sym} 2140 -750 0 0 {name=M1
L=\{l\}
nf=\{nf\} 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
