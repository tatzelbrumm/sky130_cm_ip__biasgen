v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 -560 520 -560 {
lab=avdd}
N 1000 -560 1020 -560 {
lab=avdd}
N 1000 -690 1000 -590 {
lab=vd2}
N 520 -690 520 -590 {
lab=vd1}
N 500 -720 520 -720 {
lab=avdd}
N 1000 -720 1020 -720 {
lab=avdd}
N 1000 -900 1020 -900 {
lab=avdd}
N 320 -900 340 -900 {
lab=avdd}
N 320 -560 340 -560 {
lab=avdd}
N 340 -900 500 -900 {
lab=avdd}
N 380 -560 400 -560 {
lab=Vpc}
N 340 -400 400 -400 {
lab=Vpc}
N 400 -400 580 -400 {
lab=Vpc}
N 560 -560 580 -560 {
lab=Vpc}
N 580 -560 580 -400 {
lab=Vpc}
N 340 -530 340 -400 {
lab=Vpc}
N 400 -560 400 -400 {
lab=Vpc}
N 560 -720 600 -720 {
lab=Vpb}
N 600 -720 600 -660 {
lab=Vpb}
N 600 -660 920 -660 {
lab=Vpb}
N 920 -720 920 -660 {
lab=Vpb}
N 920 -720 960 -720 {
lab=Vpb}
N 600 -660 600 -500 {
lab=Vpb}
N 520 -500 600 -500 {
lab=Vpb}
N 520 -530 520 -500 {
lab=Vpb}
N 520 -100 540 -100 {
lab=avss}
N 540 -260 540 -100 {
lab=avss}
N 520 -260 540 -260 {
lab=avss}
N 520 -230 520 -100 {
lab=avss}
N 340 -230 340 -100 {
lab=avss}
N 340 -260 360 -260 {
lab=avss}
N 360 -260 360 -100 {
lab=avss}
N 180 -230 180 -100 {
lab=avss}
N 160 -260 180 -260 {
lab=avss}
N 160 -260 160 -100 {
lab=avss}
N 180 -340 260 -340 {
lab=Ibin}
N 260 -340 260 -260 {
lab=Ibin}
N 220 -260 260 -260 {
lab=Ibin}
N 260 -260 300 -260 {
lab=Ibin}
N 180 -340 180 -290 {
lab=Ibin}
N 460 -260 480 -260 {
lab=Ibin}
N 460 -340 460 -260 {
lab=Ibin}
N 260 -340 460 -340 {
lab=Ibin}
N 920 -660 1120 -660 {
lab=Vpb}
N 1000 -360 1120 -360 {
lab=Iout}
N 500 -900 520 -900 {
lab=avdd}
N 100 -900 320 -900 {
lab=avdd}
N 360 -100 520 -100 {
lab=avss}
N 180 -100 340 -100 {
lab=avss}
N 340 -100 360 -100 {
lab=avss}
N 160 -100 180 -100 {
lab=avss}
N 100 -100 160 -100 {
lab=avss}
N 100 -340 180 -340 {
lab=Ibin}
N 1020 -720 1020 -560 {
lab=avdd}
N 320 -560 320 -540 {
lab=avdd}
N 500 -720 500 -560 {
lab=avdd}
N 1000 -530 1000 -360 {
lab=Iout}
N 340 -400 340 -290 {
lab=Vpc}
N 520 -500 520 -290 {
lab=Vpb}
N 1020 -900 1020 -720 {
lab=avdd}
N 500 -900 500 -720 {
lab=avdd}
N 320 -900 320 -560 {
lab=avdd}
N 520 -900 520 -730 {
lab=avdd}
N 340 -900 340 -570 {
lab=avdd}
N 1000 -900 1000 -750 {
lab=avdd}
N 860 -900 880 -900 {
lab=avdd}
N 860 -560 860 -490 {
lab=#net1}
N 860 -560 960 -560 {
lab=#net1}
N 860 -430 860 -400 {
lab=Vpc}
N 860 -900 860 -870 {
lab=avdd}
N 860 -840 880 -840 {
lab=avdd}
N 880 -900 880 -840 {
lab=avdd}
N 860 -460 880 -460 {
lab=avdd}
N 880 -840 880 -460 {
lab=avdd}
N 880 -900 1000 -900 {
lab=avdd}
N 860 -400 1120 -400 {
lab=Vpc}
N 860 -810 860 -560 {
lab=#net1}
N 520 -900 860 -900 {
lab=avdd}
N 580 -400 860 -400 {
lab=Vpc}
N 800 -840 820 -840 {
lab=avdd}
N 800 -900 800 -840 {
lab=avdd}
N 800 -460 820 -460 {
lab=avss}
N 800 -460 800 -100 {
lab=avss}
N 540 -100 800 -100 {
lab=avss}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {devices/iopin.sym} 100 -100 0 1 {name=p1 lab=avss}
C {devices/iopin.sym} 100 -900 0 1 {name=p2 lab=avdd}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 540 -560 0 1 {name=Mc1
L=\{lc\}
W=\{wc\}
nf=\{nfc\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 540 -720 0 1 {name=M1
L=\{l\}
W=\{w\}
nf=\{nf\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 980 -560 0 0 {name=Mc2
L=\{lc\}
W=\{wc\}
nf=\{nfc\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 980 -720 0 0 {name=M2
L=\{l\}
W=\{w\}
nf=\{nf\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 360 -560 0 1 {name=Mc3
L=\{lb\}
W=\{wb\}
nf=\{nfb\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 200 -260 0 1 {name=Mn1
L=\{lnmos\}
W=\{wnmos\}
nf=\{nfnmos\} mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 320 -260 0 0 {name=Mn2
L=\{lnmos\}
W=\{wnmos\}
nf=\{nfnmos\} mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -260 0 0 {name=Mn3
L=\{lnmos\}
W=\{wnmos\}
nf=\{nfnmos\} mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 100 -340 0 1 {name=p3 lab=Ibin}
C {devices/iopin.sym} 1120 -660 0 0 {name=p4 lab=Vpb}
C {devices/iopin.sym} 1120 -400 0 0 {name=p5 lab=Vpc
}
C {devices/iopin.sym} 1120 -360 0 0 {name=p6 lab=Iout}
C {devices/lab_wire.sym} 520 -640 3 0 {name=p7 sig_type=std_logic lab=vd1}
C {devices/lab_wire.sym} 1000 -640 3 0 {name=p8 sig_type=std_logic lab=vd2}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 840 -460 0 0 {name=Mon1
L=.5
W=1
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 840 -840 0 0 {name=Moff1
L=.5
W=1
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 940 -560 0 0 {name=p9 sig_type=std_logic lab=vpc2}
