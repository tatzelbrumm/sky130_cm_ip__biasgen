v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 900 -400 920 -400 { lab=vss}
N 920 -400 920 -100 { lab=vss}
N 560 -400 580 -400 { lab=vss}
N 560 -400 560 -100 { lab=vss}
N 740 -490 740 -100 { lab=vss}
N 720 -520 740 -520 { lab=vss}
N 720 -520 720 -100 { lab=vss}
N 900 -720 920 -720 { lab=vdd}
N 920 -780 920 -720 { lab=vdd}
N 900 -780 900 -750 { lab=vdd}
N 740 -580 740 -550 { lab=vbn}
N 580 -460 580 -430 { lab=vbr}
N 620 -720 640 -720 { lab=vbp}
N 640 -720 640 -660 { lab=vbp}
N 640 -660 800 -660 { lab=vbp}
N 800 -720 800 -660 { lab=vbp}
N 780 -720 800 -720 { lab=vbp}
N 840 -720 860 -720 { lab=vbp}
N 840 -660 900 -660 { lab=vbp}
N 800 -520 860 -520 { lab=vbn}
N 800 -580 800 -520 { lab=vbn}
N 740 -580 800 -580 { lab=vbn}
N 900 -690 900 -660 { lab=vbp}
N 780 -520 800 -520 { lab=vbn}
N 640 -460 640 -400 { lab=vbr}
N 580 -460 640 -460 { lab=vbr}
N 720 -720 740 -720 { lab=vdd}
N 720 -780 720 -720 { lab=vdd}
N 740 -780 740 -750 { lab=vdd}
N 560 -720 580 -720 { lab=vdd}
N 560 -780 560 -720 { lab=vdd}
N 580 -780 580 -750 { lab=vdd}
N 900 -520 920 -520 { lab=vss}
N 920 -520 920 -400 { lab=vss}
N 900 -100 920 -100 { lab=vss}
N 900 -780 920 -780 { lab=vdd}
N 740 -100 900 -100 { lab=vss}
N 560 -100 580 -100 { lab=vss}
N 720 -100 740 -100 { lab=vss}
N 580 -100 720 -100 { lab=vss}
N 740 -780 900 -780 { lab=vdd}
N 620 -400 640 -400 { lab=vbr}
N 580 -780 720 -780 { lab=vdd}
N 720 -780 740 -780 { lab=vdd}
N 560 -780 580 -780 { lab=vdd}
N 800 -580 970 -580 { lab=vbn}
N 510 -780 560 -780 { lab=vdd}
N 510 -100 560 -100 { lab=vss}
N 840 -720 840 -660 { lab=vbp}
N 640 -460 970 -460 { lab=vbr}
N 900 -660 970 -660 { lab=vbp}
N 580 -690 580 -650 { lab=#net1}
N 580 -590 580 -460 { lab=vbr}
N 740 -590 740 -580 { lab=vbn}
N 740 -690 740 -650 { lab=#net2}
N 900 -660 900 -650 { lab=vbp}
N 900 -590 900 -550 { lab=#net3}
N 900 -490 900 -430 { lab=vres}
N 800 -660 840 -660 { lab=vbp}
N 900 -320 920 -320 { lab=vss}
N 560 -320 580 -320 { lab=vss}
N 620 -320 640 -320 { lab=#net4}
N 900 -240 920 -240 { lab=vss}
N 560 -240 580 -240 { lab=vss}
N 620 -240 640 -240 { lab=#net5}
N 900 -160 920 -160 { lab=vss}
N 560 -160 580 -160 { lab=vss}
N 620 -160 640 -160 { lab=#net6}
N 580 -370 580 -350 {}
N 900 -370 900 -350 {}
N 900 -290 900 -270 {}
N 580 -290 580 -270 {}
N 580 -210 580 -190 {}
N 900 -210 900 -190 {}
N 900 -130 900 -100 {}
N 580 -130 580 -100 {}
N 640 -320 640 -240 {}
N 840 -400 840 -320 {}
N 840 -240 840 -160 {}
N 840 -460 840 -400 {}
N 840 -320 840 -240 {}
N 640 -240 640 -160 {}
N 640 -400 640 -320 {}
N 840 -400 860 -400 {}
N 840 -320 860 -320 {}
N 840 -240 860 -240 {}
N 840 -160 860 -160 {}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {sky130_fd_pr/nfet_01v8.sym} 880 -520 0 0 {name=M10
L=1
W=1  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 880 -720 0 0 {name=M12
L=1
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 760 -520 0 1 {name=M11
L=1
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 760 -720 0 1 {name=M13
L=1
W=1
nf=1 mult=4
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 600 -720 0 1 {name=M14
L=1
W=1
nf=1 mult=2
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 880 -400 0 0 {name=M16
L=20
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 600 -400 0 1 {name=M15
L=20
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 520 -100 0 1 {name=p1 lab=vss}
C {devices/iopin.sym} 520 -780 0 1 {name=p2 lab=vdd}
C {devices/iopin.sym} 960 -660 0 0 {name=p3 lab=vbp}
C {devices/iopin.sym} 960 -580 0 0 {name=p4 lab=vbn}
C {devices/iopin.sym} 960 -460 0 0 {name=p5 lab=vbr}
C {devices/ammeter.sym} 900 -620 0 0 {name=Vi1}
C {devices/ammeter.sym} 740 -620 0 0 {name=Vi4}
C {devices/ammeter.sym} 580 -620 0 0 {name=Viaux}
C {devices/lab_pin.sym} 900 -480 0 0 {name=l2 lab=vres}
C {sky130_fd_pr/nfet_01v8.sym} 880 -320 0 0 {name=M18
L=20
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 600 -320 0 1 {name=M17
L=20
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 880 -240 0 0 {name=M20
L=20
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 600 -240 0 1 {name=M19
L=20
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 880 -160 0 0 {name=M22
L=20
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 600 -160 0 1 {name=M21
L=20
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
