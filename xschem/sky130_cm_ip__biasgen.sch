v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 -540 520 -540 {
lab=avdd}
N 720 -540 740 -540 {
lab=avdd}
N 720 -780 720 -730 {
lab=avdd}
N 520 -780 520 -730 {
lab=avdd}
N 720 -670 720 -570 {
lab=#net1}
N 520 -670 520 -570 {
lab=vd1}
N 740 -780 740 -540 {
lab=avdd}
N 720 -780 740 -780 {
lab=avdd}
N 500 -700 520 -700 {
lab=avdd}
N 500 -780 500 -700 {
lab=avdd}
N 500 -700 500 -540 {
lab=avdd}
N 720 -700 740 -700 {
lab=avdd}
N 500 -780 720 -780 {
lab=avdd}
N 100 -780 340 -780 {
lab=avdd}
N 340 -780 340 -570 {
lab=avdd}
N 320 -540 340 -540 {
lab=avdd}
N 320 -780 320 -540 {
lab=avdd}
N 340 -780 500 -780 {
lab=avdd}
N 380 -540 400 -540 {
lab=Vpc}
N 340 -440 400 -440 {
lab=Vpc}
N 400 -440 580 -440 {
lab=Vpc}
N 560 -540 580 -540 {
lab=Vpc}
N 660 -540 680 -540 {
lab=Vpc}
N 580 -440 660 -440 {
lab=Vpc}
N 660 -540 660 -440 {
lab=Vpc}
N 580 -540 580 -440 {
lab=Vpc}
N 340 -510 340 -440 {
lab=Vpc}
N 400 -540 400 -440 {
lab=Vpc}
N 560 -700 600 -700 {
lab=Vpb}
N 600 -700 600 -640 {
lab=Vpb}
N 600 -640 640 -640 {
lab=Vpb}
N 640 -700 640 -640 {
lab=Vpb}
N 640 -700 680 -700 {
lab=Vpb}
N 600 -640 600 -480 {
lab=Vpb}
N 520 -480 600 -480 {
lab=Vpb}
N 520 -510 520 -480 {
lab=Vpb}
N 100 -100 540 -100 {
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
N 520 -480 520 -290 {
lab=Vpb}
N 340 -440 340 -290 {
lab=Vpc}
N 100 -340 260 -340 {
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
N 660 -440 840 -440 {
lab=Vpc}
N 640 -640 840 -640 {
lab=Vpb}
N 720 -510 720 -360 {
lab=Iout}
N 720 -360 840 -360 {
lab=Iout}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {devices/iopin.sym} 100 -100 0 1 {name=p1 lab=avss}
C {devices/iopin.sym} 100 -780 0 1 {name=p2 lab=avdd}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 540 -540 0 1 {name=Mc1
L=\{lc\}
W=\{wc\}
nf=\{nfc\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/code_shown.sym} 960 -750 0 0 {name=params only_toplevel=false value="* device parameters
.param id     = 10n
.param vdref  = 200m
.param l      = 0.15
.param w      = 1
.param nf     = 1
.param lc     = 0.5
.param wc     = 1
.param nfc    = 1
.param lb     = 0.5
.param wb     = 1
.param nfb    = 1
.param ln     = 0.5
.param wn     = 1
.param nfn    = 1
.param egain  = 10000
* simulation parameters
.param imin      = 1n
.param imax      = 10u
.param iinc      = 1n
"}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 540 -700 0 1 {name=M1
L=\{l\}
W=\{w\}
nf=\{nf\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 700 -540 0 0 {name=Mc2
L=\{lc\}
W=\{wc\}
nf=\{nfc\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 700 -700 0 0 {name=M2
L=\{l\}
W=\{w\}
nf=\{nf\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 360 -540 0 1 {name=Mc3
L=\{lb\}
W=\{wb\}
nf=\{nfb\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 200 -260 0 1 {name=Mn1
L=\{ln\}
W=\{wn\}
nf=\{nfn\} mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 320 -260 0 0 {name=Mn2
L=\{ln\}
W=\{wn\}
nf=\{nfn\} mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -260 0 0 {name=Mn3
L=\{ln\}
W=\{wn\}
nf=\{nfn\} mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 100 -340 0 1 {name=p3 lab=Ibin}
C {devices/iopin.sym} 840 -640 0 0 {name=p4 lab=Vpb}
C {devices/iopin.sym} 840 -440 0 0 {name=p5 lab=Vpc
}
C {devices/iopin.sym} 840 -360 0 0 {name=p6 lab=Iout}
C {devices/lab_wire.sym} 520 -620 3 0 {name=p7 sig_type=std_logic lab=vd1}
C {devices/lab_wire.sym} 720 -620 3 0 {name=p8 sig_type=std_logic lab=vd2}
