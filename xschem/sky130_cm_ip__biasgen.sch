v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -160 540 -160 {
lab=avss}
N 620 -240 740 -240 {
lab=Iout[2:1]}
N 640 -360 740 -360 {
lab=Vpb}
N 660 -340 740 -340 {
lab=Vpc}
N 320 -280 460 -280 {
lab=Igated}
N 640 -360 640 -280 {
lab=Vpb}
N 620 -280 640 -280 {
lab=Vpb}
N 320 -360 640 -360 {
lab=Vpb}
N 660 -340 660 -260 {
lab=Vpc}
N 620 -260 660 -260 {
lab=Vpc}
N 320 -340 660 -340 {
lab=Vpc}
N 520 -420 520 -320 {
lab=dvdd}
N 240 -420 520 -420 {
lab=dvdd}
N 560 -460 560 -320 {
lab=avdd}
N 280 -460 560 -460 {
lab=avdd}
N 540 -200 540 -160 {
lab=avss}
N 280 -460 280 -380 {
lab=avdd}
N 240 -420 240 -380 {
lab=dvdd}
N 260 -260 260 -160 {
lab=avss}
N 140 -160 260 -160 {
lab=avss}
N 140 -280 200 -280 {
lab=Ibin}
N 140 -340 200 -340 {
lab=poweron}
N 140 -240 460 -240 {
lab=en[2:1]}
N 130 -420 240 -420 {
lab=dvdd}
N 130 -460 280 -460 {
lab=avdd}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {devices/iopin.sym} 140 -160 0 1 {name=p1 lab=avss}
C {devices/iopin.sym} 130 -460 0 1 {name=p2 lab=avdd}
C {devices/iopin.sym} 140 -280 0 1 {name=p3 lab=Ibin}
C {devices/iopin.sym} 740 -360 0 0 {name=p4 lab=Vpb}
C {devices/iopin.sym} 740 -340 0 0 {name=p5 lab=Vpc
}
C {devices/iopin.sym} 740 -240 0 0 {name=p6 lab=Iout[2:1]}
C {devices/iopin.sym} 130 -420 0 1 {name=p15 lab=dvdd}
C {devices/iopin.sym} 140 -240 0 1 {name=p16 lab=en[2:1]}
C {xschem/sky130_cm_sources.sym} 540 -260 0 0 {name=xsrc l=\{l\} w=\{w\} nf=\{nf\} lc=\{lc\} wc=\{wc\} nfc=\{nfc\} lb=\{lb\} wb=\{wb\} nfb=\{nfb\} lnmos=\{lnmos\} wnmos=\{wnmos\} nfnmos=\{nfnmos\}
}
C {xschem/sky130_cm_poweroff.sym} 260 -320 0 0 {name=xpower lpt=1 wpt=4 nfpt=1 lnt=1 wnt=2 nfnt=1 lpu=1 wpu=2 nfpu=1 lpd=1 wpd=2 nfpd=1}
C {devices/iopin.sym} 140 -340 0 1 {name=p7 lab=poweron}
C {devices/lab_wire.sym} 420 -280 0 0 {name=p8 lab=Igated}
