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
N 800 -140 1380 -140 {
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
lab=#net1}
N 720 -800 720 -640 {
lab=vdda}
N 1380 -380 1380 -240 {
lab=out}
N 800 -190 800 -140 {
lab=GND}
N 800 -280 800 -250 {
lab=#net1}
N 720 -280 800 -280 {
lab=#net1}
N 460 -140 800 -140 {
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
lab=#net1}
N 1040 -280 1040 -220 {
lab=#net1}
N 800 -280 1040 -280 {
lab=#net1}
N 900 -220 920 -220 {
lab=#net1}
N 900 -280 900 -220 {
lab=#net1}
N 840 -220 860 -220 {
lab=#net1}
N 860 -280 860 -220 {
lab=#net1}
N 1100 -380 1100 -250 {
lab=out}
N 1100 -380 1380 -380 {
lab=out}
N 960 -380 960 -250 {
lab=out}
N 960 -380 1100 -380 {
lab=out}
N 780 -220 800 -220 {
lab=GND}
N 780 -220 780 -140 {
lab=GND}
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
.param vofs   = 2
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
