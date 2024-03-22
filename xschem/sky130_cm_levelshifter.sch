v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 660 -140 1000 -140 {
lab=avss}
N 1000 -170 1000 -140 {
lab=avss}
N 640 -170 640 -140 {
lab=avss}
N 1000 -400 1000 -230 {
lab=Qb}
N 640 -480 640 -230 {
lab=Q}
N 620 -580 640 -580 {
lab=avdd}
N 620 -640 620 -580 {
lab=avdd}
N 1000 -580 1020 -580 {
lab=avdd}
N 1020 -640 1020 -580 {
lab=avdd}
N 1000 -640 1020 -640 {
lab=avdd}
N 640 -480 940 -480 {
lab=Q}
N 680 -580 700 -580 {
lab=Qb}
N 700 -580 700 -520 {
lab=Qb}
N 1000 -200 1020 -200 {
lab=avss}
N 1020 -200 1020 -140 {
lab=avss}
N 1000 -140 1020 -140 {
lab=avss}
N 640 -200 660 -200 {
lab=avss}
N 660 -200 660 -140 {
lab=avss}
N 640 -140 660 -140 {
lab=avss}
N 620 -640 640 -640 {
lab=avdd}
N 640 -640 1000 -640 {
lab=avdd}
N 940 -580 960 -580 {
lab=Q}
N 700 -520 1000 -520 {
lab=Qb}
N 120 -640 620 -640 {
lab=avdd}
N 120 -280 200 -280 {
lab=A}
N 940 -300 940 -200 {
lab=abb}
N 940 -200 960 -200 {
lab=abb}
N 420 -140 640 -140 {
lab=avss}
N 280 -440 400 -440 {
lab=dvdd}
N 940 -580 940 -480 {
lab=Q}
N 1000 -520 1000 -400 {
lab=Qb}
N 1000 -640 1000 -610 {
lab=avdd}
N 640 -640 640 -610 {
lab=avdd}
N 1000 -400 1080 -400 {
lab=Qb}
N 640 -560 640 -480 {
lab=Q}
N 560 -260 560 -200 {
lab=ab}
N 560 -200 600 -200 {
lab=ab}
N 200 -200 220 -200 {
lab=A}
N 200 -280 200 -200 {
lab=A}
N 200 -360 200 -280 {
lab=A}
N 200 -360 220 -360 {
lab=A}
N 260 -280 260 -220 {
lab=ab}
N 260 -440 260 -390 {
lab=dvdd}
N 260 -170 260 -140 {
lab=avss}
N 340 -200 360 -200 {
lab=ab}
N 340 -260 340 -200 {
lab=ab}
N 340 -360 340 -280 {
lab=ab}
N 340 -360 360 -360 {
lab=ab}
N 400 -300 400 -220 {
lab=abb}
N 400 -440 400 -390 {
lab=dvdd}
N 400 -170 400 -140 {
lab=avss}
N 260 -280 340 -280 {
lab=ab}
N 120 -440 260 -440 {
lab=dvdd}
N 260 -440 280 -440 {
lab=dvdd}
N 260 -140 280 -140 {
lab=avss}
N 120 -140 260 -140 {
lab=avss}
N 400 -140 420 -140 {
lab=avss}
N 280 -140 400 -140 {
lab=avss}
N 260 -330 260 -280 {
lab=ab}
N 400 -300 940 -300 {
lab=abb}
N 400 -330 400 -300 {
lab=abb}
N 340 -260 560 -260 {
lab=ab}
N 340 -280 340 -260 {
lab=ab}
N 940 -480 1080 -480 {
lab=Q}
N 1000 -550 1000 -520 {
lab=Qb}
N 260 -200 280 -200 {
lab=avss}
N 280 -200 280 -140 {
lab=avss}
N 260 -360 280 -360 {
lab=dvdd}
N 280 -440 280 -360 {
lab=dvdd}
N 400 -440 420 -440 {
lab=dvdd}
N 420 -440 420 -360 {
lab=dvdd}
N 400 -360 420 -360 {
lab=dvdd}
N 400 -200 420 -200 {
lab=avss}
N 420 -200 420 -140 {
lab=avss}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {devices/iopin.sym} 120 -140 0 1 {name=p1 lab=avss}
C {devices/iopin.sym} 120 -640 0 1 {name=p2 lab=avdd}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 620 -200 0 0 {name=Mnl1
L=0.5
W=6
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 980 -200 0 0 {name=Mnl2
L=0.5
W=6
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 660 -580 0 1 {name=Mpl1
L=0.5
W=2
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 980 -580 0 0 {name=Mpl2
L=0.5
W=2
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 560 -260 0 0 {name=p13 sig_type=std_logic lab=ab}
C {devices/lab_wire.sym} 560 -300 0 0 {name=p14 sig_type=std_logic lab=abb}
C {devices/iopin.sym} 120 -280 0 1 {name=p4 lab=A}
C {devices/iopin.sym} 120 -440 0 1 {name=p8 lab=dvdd}
C {devices/iopin.sym} 1080 -400 0 0 {name=p3 lab=Qb}
C {devices/iopin.sym} 1080 -480 0 0 {name=p5 lab=Q}
C {sky130_fd_pr/nfet_01v8.sym} 240 -200 0 0 {name=Mn1
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 240 -360 0 0 {name=Mp1
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 380 -200 0 0 {name=Mn2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 380 -360 0 0 {name=Mp2
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
