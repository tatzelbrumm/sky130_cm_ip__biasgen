v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 780 -360 800 -360 {
lab=avdd}
N 780 -490 780 -390 {
lab=vd}
N 780 -520 800 -520 {
lab=avdd}
N 780 -700 800 -700 {
lab=avdd}
N 800 -520 800 -360 {
lab=avdd}
N 780 -330 780 -160 {
lab=Iout}
N 700 -700 780 -700 {
lab=avdd}
N 700 -360 700 -290 {
lab=vsw}
N 700 -230 700 -200 {
lab=Vpc}
N 700 -620 800 -620 {
lab=avdd}
N 700 -260 800 -260 {
lab=avdd}
N 700 -360 740 -360 {
lab=vsw}
N 620 -520 740 -520 {
lab=Vpb}
N 700 -590 700 -360 {
lab=vsw}
N 780 -700 780 -550 {
lab=avdd}
N 800 -620 800 -520 {
lab=avdd}
N 700 -700 700 -650 {
lab=avdd}
N 620 -200 700 -200 {
lab=Vpc}
N 620 -260 660 -260 {
lab=onb}
N 620 -700 700 -700 {
lab=avdd}
N 620 -620 660 -620 {
lab=offb}
N 780 -160 820 -160 {
lab=Iout}
N 800 -700 800 -620 {
lab=avdd}
N 800 -360 800 -260 {}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {devices/iopin.sym} 620 -700 0 1 {name=p2 lab=avdd}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 760 -360 0 0 {name=Mc2
L=\{lc\}
W=\{wc\}
nf=\{nfc\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 760 -520 0 0 {name=M2
L=\{l\}
W=\{w\}
nf=\{nf\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 620 -520 0 1 {name=p4 lab=Vpb}
C {devices/iopin.sym} 620 -200 0 1 {name=p5 lab=Vpc
}
C {devices/iopin.sym} 820 -160 0 0 {name=p6 lab=Iout}
C {devices/lab_wire.sym} 780 -440 3 0 {name=p8 sig_type=std_logic lab=vd}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 680 -260 0 0 {name=Mon
L=\{lon\}
W=\{won\}
nf=\{nfon\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 680 -620 0 0 {name=Moff
L=\{loff\}
W=\{woff\}
nf=\{nfoff\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 700 -440 3 0 {name=p9 sig_type=std_logic lab=vsw
}
C {devices/iopin.sym} 620 -620 0 1 {name=p1 lab=offb}
C {devices/iopin.sym} 620 -260 0 1 {name=p3 lab=onb
}
