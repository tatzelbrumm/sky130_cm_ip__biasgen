v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -900 380 -900 {
lab=avdd}
N 140 -140 360 -140 {
lab=avss}
N 140 -460 620 -460 {
lab=Ibin}
N 380 -900 380 -260 {
lab=avdd}
N 1100 -680 1140 -680 {
lab=Vpb}
N 940 -900 960 -900 {
lab=avdd}
N 960 -900 960 -780 {
lab=avdd}
N 940 -900 940 -810 {
lab=avdd}
N 940 -780 960 -780 {
lab=avdd}
N 880 -780 900 -780 {
lab=on}
N 1100 -900 1120 -900 {
lab=avdd}
N 1120 -900 1120 -780 {
lab=avdd}
N 1100 -900 1100 -810 {
lab=avdd}
N 1100 -780 1120 -780 {
lab=avdd}
N 1040 -780 1060 -780 {
lab=on}
N 1100 -750 1100 -680 {
lab=Vpb}
N 940 -750 940 -640 {
lab=Vpc}
N 940 -640 1140 -640 {
lab=Vpc}
N 620 -460 650 -460 {
lab=Ibin}
N 620 -460 620 -340 {
lab=Ibin}
N 620 -340 730 -340 {
lab=Ibin}
N 710 -460 820 -460 {
lab=Iout}
N 820 -460 820 -340 {
lab=Iout}
N 790 -340 820 -340 {
lab=Iout}
N 140 -860 340 -860 {
lab=dvdd}
N 760 -900 940 -900 {
lab=avdd}
N 960 -900 1100 -900 {
lab=avdd}
N 1100 -340 1140 -340 {
lab=Iout}
N 140 -220 300 -220 {
lab=en}
N 680 -140 1100 -140 {
lab=avss}
N 360 -180 360 -140 {
lab=avss}
N 1100 -340 1100 -230 {
lab=Iout}
N 1100 -170 1100 -140 {
lab=avss}
N 820 -340 1100 -340 {
lab=Iout}
N 1100 -200 1120 -200 {
lab=avss}
N 1120 -200 1120 -140 {
lab=avss}
N 1100 -140 1120 -140 {
lab=avss}
N 760 -200 1060 -200 {
lab=off}
N 760 -300 760 -200 {
lab=off}
N 1040 -780 1040 -720 {
lab=on}
N 880 -720 1040 -720 {
lab=on}
N 880 -780 880 -720 {
lab=on}
N 410 -240 500 -240 {
lab=on}
N 500 -720 500 -240 {
lab=on}
N 680 -720 880 -720 {
lab=on}
N 680 -720 680 -500 {
lab=on}
N 680 -460 680 -140 {
lab=avss}
N 760 -900 760 -340 {
lab=avdd}
N 340 -860 340 -260 {
lab=dvdd}
N 420 -200 760 -200 {
lab=off}
N 500 -720 680 -720 {
lab=on}
N 360 -140 680 -140 {
lab=avss}
N 380 -900 760 -900 {
lab=avdd}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {devices/iopin.sym} 140 -140 0 1 {name=p1 lab=avss}
C {devices/iopin.sym} 140 -900 0 1 {name=p2 lab=avdd}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 -200 0 0 {name=Mnpd
L=\{lpd\}
W=\{wpd\}
nf=\{nfpd\} mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 140 -460 0 1 {name=p3 lab=Ibin}
C {devices/iopin.sym} 1140 -680 0 0 {name=p4 lab=Vpb}
C {devices/iopin.sym} 1140 -640 0 0 {name=p5 lab=Vpc
}
C {xschem/sky130_cm_levelshifter.sym} 360 -220 0 0 {name=xlvl}
C {devices/iopin.sym} 140 -860 0 1 {name=p15 lab=dvdd}
C {devices/iopin.sym} 140 -220 0 1 {name=p16 lab=en}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 760 -320 3 0 {name=Mpt
L=\{lpt\}
W=\{wpt\}
nf=\{nfpt\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 680 -480 1 0 {name=Mnt
L=\{lnt\}
W=\{wnt\}
nf=\{nft\} mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 920 -780 0 0 {name=Mpuc
L=\{lpu\}
W=\{wpu\}
nf=\{npu\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1080 -780 0 0 {name=Mpub
L=\{lpu\}
W=\{wpu\}
nf=\{npu\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 1140 -340 0 0 {name=p6 lab=Ibout
}
C {devices/lab_wire.sym} 560 -720 0 0 {name=p13 lab=on}
C {devices/lab_wire.sym} 560 -200 0 0 {name=p7 lab=off}
