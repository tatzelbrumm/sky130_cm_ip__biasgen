v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1540 -180 1540 -140 {
lab=GND}
N 1540 -140 1640 -140 {
lab=GND}
N 460 -270 460 -140 {
lab=GND}
N 1380 -180 1380 -140 {
lab=GND}
N 1540 -260 1540 -240 {
lab=res}
N 1640 -180 1640 -140 {
lab=GND}
N 1640 -260 1640 -240 {
lab=ofs}
N 1120 -140 1380 -140 {
lab=GND}
N 460 -140 460 -120 {
lab=GND}
N 1380 -140 1540 -140 {
lab=GND}
N 460 -800 460 -330 {
lab=vdda}
N 460 -800 720 -800 {
lab=vdda}
N 720 -580 720 -280 {
lab=in}
N 720 -800 720 -640 {
lab=vdda}
N 1380 -380 1380 -240 {
lab=out}
N 800 -190 800 -140 {
lab=GND}
N 800 -280 800 -250 {
lab=in}
N 720 -280 800 -280 {
lab=in}
N 780 -140 800 -140 {
lab=GND}
N 960 -190 960 -140 {
lab=GND}
N 1100 -190 1100 -140 {
lab=GND}
N 960 -220 980 -220 {
lab=GND}
N 980 -220 980 -140 {
lab=GND}
N 1100 -220 1120 -220 {
lab=GND}
N 1120 -220 1120 -140 {
lab=GND}
N 1040 -220 1060 -220 {
lab=in}
N 1040 -280 1040 -220 {
lab=in}
N 900 -280 1040 -280 {
lab=in}
N 900 -220 920 -220 {
lab=in}
N 900 -280 900 -220 {
lab=in}
N 840 -220 860 -220 {
lab=in}
N 860 -280 860 -220 {
lab=in}
N 780 -220 800 -220 {
lab=GND}
N 780 -220 780 -140 {
lab=GND}
N 940 -800 960 -800 {
lab=vdda}
N 960 -800 960 -630 {
lab=vdda}
N 940 -600 960 -600 {
lab=vdda}
N 940 -800 940 -600 {
lab=vdda}
N 800 -140 960 -140 {
lab=GND}
N 980 -140 1100 -140 {
lab=GND}
N 960 -140 980 -140 {
lab=GND}
N 1100 -140 1120 -140 {
lab=GND}
N 860 -280 900 -280 {
lab=in}
N 800 -280 860 -280 {
lab=in}
N 460 -140 780 -140 {
lab=GND}
N 720 -800 940 -800 {
lab=vdda}
N 960 -480 960 -250 {
lab=vpc}
N 1000 -600 1020 -600 {
lab=vpc}
N 960 -480 1020 -480 {
lab=vpc}
N 1080 -800 1100 -800 {
lab=vdda}
N 1100 -800 1100 -750 {
lab=vdda}
N 1080 -720 1100 -720 {
lab=vdda}
N 1080 -800 1080 -720 {
lab=vdda}
N 960 -800 1080 -800 {
lab=vdda}
N 1300 -720 1320 -720 {
lab=vdda}
N 1320 -800 1320 -720 {
lab=vdda}
N 1300 -800 1320 -800 {
lab=vdda}
N 1300 -800 1300 -750 {
lab=vdda}
N 1140 -720 1160 -720 {
lab=vpb}
N 1100 -520 1160 -520 {
lab=vpb}
N 960 -570 960 -480 {
lab=vpc}
N 1020 -600 1020 -480 {
lab=vpc}
N 1100 -800 1300 -800 {
lab=vdda}
N 1100 -520 1100 -250 {
lab=vpb}
N 1100 -690 1100 -520 {
lab=vpb}
N 1160 -720 1160 -520 {
lab=vpb}
N 1240 -720 1260 -720 {
lab=vpb}
N 1240 -720 1240 -520 {
lab=vpb}
N 1160 -520 1240 -520 {
lab=vpb}
N 1300 -690 1300 -380 {
lab=out}
N 1300 -380 1380 -380 {
lab=out}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {devices/code_shown.sym} 1540 -890 0 0 {name=params only_toplevel=false value="* device parameters
.param l      = 8
.param w      = 2
.param nf     = 1
.param lc     = 0.5
.param wc     = 2
.param nfc    = 1
.param lb     = 16
.param wb     = 2
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
C {devices/vsource.sym} 1540 -210 0 0 {name=Vres value=\{rload\} savecurrent=false}
C {devices/asrc.sym} 1380 -210 0 0 {name=Bload function="i=(v(out)-v(ofs))/v(res)"}
C {devices/lab_pin.sym} 1540 -260 0 1 {name=l5 lab=res}
C {devices/lab_pin.sym} 1380 -280 0 1 {name=l3 lab=out}
C {devices/lab_wire.sym} 560 -800 0 1 {name=p7 lab=vdda
}
C {devices/vsource.sym} 1640 -210 0 0 {name=Vofs value=\{vofs\} savecurrent=false}
C {devices/lab_pin.sym} 1640 -260 0 1 {name=l4 lab=ofs}
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 820 -220 0 1 {name=Mn1
L=\{lnmos\}
W=\{wnmos\}
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 940 -220 0 0 {name=Mn2
L=\{lnmos\}
W=\{wnmos\}
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 -220 0 0 {name=Mn3
L=\{lnmos\}
W=\{wnmos\}
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 980 -600 0 1 {name=Mpb
L=\{lb\}
W=\{wb\}
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 1000 -480 0 0 {name=p1 sig_type=std_logic lab=vpc}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1120 -720 0 1 {name=Mp1
L=\{l\}
W=\{w\}
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1280 -720 0 0 {name=Mp2
L=\{l\}
W=\{w\}
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 1140 -520 0 0 {name=p2 sig_type=std_logic lab=vpb}
C {devices/lab_wire.sym} 770 -280 0 0 {name=p3 sig_type=std_logic lab=in}
