v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -900 380 -900 {
lab=avdd}
N 380 -720 440 -720 {
lab=Vpc}
N 560 -140 580 -140 {
lab=avss}
N 560 -200 580 -200 {
lab=avss}
N 380 -200 400 -200 {
lab=avss}
N 200 -200 220 -200 {
lab=avss}
N 220 -280 300 -280 {
lab=Ibin}
N 300 -280 300 -200 {
lab=Ibin}
N 260 -200 300 -200 {
lab=Ibin}
N 300 -200 340 -200 {
lab=Ibin}
N 220 -280 220 -230 {
lab=Ibin}
N 500 -200 520 -200 {
lab=Ibin}
N 500 -280 500 -200 {
lab=Ibin}
N 300 -280 500 -280 {
lab=Ibin}
N 140 -900 360 -900 {
lab=avdd}
N 480 -140 560 -140 {
lab=avss}
N 220 -140 380 -140 {
lab=avss}
N 380 -140 400 -140 {
lab=avss}
N 200 -140 220 -140 {
lab=avss}
N 140 -140 200 -140 {
lab=avss}
N 140 -280 220 -280 {
lab=Ibin}
N 580 -140 880 -140 {
lab=avss}
N 140 -860 860 -860 {
lab=dvdd}
N 360 -900 360 -780 {
lab=avdd}
N 380 -720 380 -230 {
lab=Vpc}
N 580 -900 580 -700 {
lab=avdd}
N 540 -780 540 -700 {
lab=Vpc}
N 560 -520 560 -230 {
lab=Vpb}
N 560 -820 560 -700 {
lab=Vpb}
N 480 -900 580 -900 {
lab=avdd}
N 440 -780 540 -780 {
lab=Vpc}
N 560 -520 640 -520 {
lab=Vpb}
N 640 -820 640 -520 {
lab=Vpb}
N 480 -660 500 -660 {
lab=avdd}
N 480 -900 480 -660 {
lab=avdd}
N 480 -620 500 -620 {
lab=avss}
N 440 -780 440 -720 {
lab=Vpc}
N 560 -560 560 -520 {
lab=Vpb}
N 560 -820 640 -820 {
lab=Vpb}
N 380 -900 480 -900 {
lab=avdd}
N 400 -140 480 -140 {
lab=avss}
N 380 -900 380 -810 {
lab=avdd}
N 380 -760 380 -720 {
lab=Vpc}
N 780 -640 780 -480 {
lab=en[2:1]}
N 780 -640 820 -640 {
lab=en[2:1]}
N 140 -480 780 -480 {
lab=en[2:1]}
N 860 -860 860 -680 {
lab=dvdd}
N 900 -900 900 -680 {
lab=avdd}
N 1020 -780 1020 -700 {
lab=Vpc}
N 1040 -820 1040 -700 {
lab=Vpb}
N 1060 -900 1060 -700 {
lab=avdd}
N 900 -900 1060 -900 {
lab=avdd}
N 540 -780 1020 -780 {
lab=Vpc}
N 640 -820 1040 -820 {
lab=Vpb}
N 580 -900 900 -900 {
lab=avdd}
N 940 -620 980 -620 {
lab=vgon[2:1]}
N 940 -660 980 -660 {
lab=vgoff[2:1]}
N 1040 -560 1040 -520 {
lab=Iout[2:1]}
N 1040 -820 1140 -820 {
lab=Vpb}
N 1020 -780 1140 -780 {
lab=Vpc}
N 360 -780 380 -780 {
lab=avdd}
N 420 -780 440 -780 {
lab=Vpc}
N 560 -170 560 -140 {
lab=avss}
N 580 -200 580 -140 {
lab=avss}
N 480 -620 480 -140 {
lab=avss}
N 220 -170 220 -140 {
lab=avss}
N 380 -170 380 -140 {
lab=avss}
N 400 -200 400 -140 {
lab=avss}
N 200 -200 200 -140 {
lab=avss}
N 880 -600 880 -140 {
lab=avss}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {devices/iopin.sym} 140 -140 0 1 {name=p1 lab=avss}
C {devices/iopin.sym} 140 -900 0 1 {name=p2 lab=avdd}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 400 -780 0 1 {name=Mc3
L=\{lb\}
W=\{wb\}
nf=\{nfb\} mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 240 -200 0 1 {name=Mn1
L=\{lnmos\}
W=\{wnmos\}
nf=\{nfnmos\} mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 360 -200 0 0 {name=Mn2
L=\{lnmos\}
W=\{wnmos\}
nf=\{nfnmos\} mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 540 -200 0 0 {name=Mn3
L=\{lnmos\}
W=\{wnmos\}
nf=\{nfnmos\} mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 140 -280 0 1 {name=p3 lab=Ibin}
C {devices/iopin.sym} 1140 -820 0 0 {name=p4 lab=Vpb}
C {devices/iopin.sym} 1140 -780 0 0 {name=p5 lab=Vpc
}
C {devices/iopin.sym} 1040 -520 1 0 {name=p6 lab=Iout[2:1]}
C {devices/lab_wire.sym} 960 -660 0 0 {name=p13 lab=vgoff[2:1]}
C {devices/lab_wire.sym} 960 -620 0 0 {name=p14 lab=vgon[2:1]}
C {xschem/sky130_cm_levelshifter.sym} 880 -640 0 0 {name=xlvl[2:1]}
C {devices/iopin.sym} 140 -860 0 1 {name=p15 lab=dvdd}
C {devices/iopin.sym} 140 -480 0 1 {name=p16 lab=en[2:1]}
C {xschem/sky130_cm_sw_psource.sym} 560 -640 0 0 {name=x0 l=\{l\} w=\{w\} nf=\{nf\} lc=\{lc\} wc=\{wc\} nfc=\{nfc\} lon=.5 won=1 nfon=1 loff=.5 woff=1 nfoff=1}
C {xschem/sky130_cm_sw_psource.sym} 1040 -640 0 0 {name=xsrc[2:1] l=\{l\} w=\{w\} nf=\{nf\} lc=\{lc\} wc=\{wc\} nfc=\{nfc\} lon=.5 won=1 nfon=1 loff=.5 woff=1 nfoff=1}
