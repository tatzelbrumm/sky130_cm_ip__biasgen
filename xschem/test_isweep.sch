v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1200 -140 1300 -140 {
lab=GND}
N 1200 -320 1200 -300 {
lab=res}
N 1300 -320 1300 -300 {
lab=ofs}
N 1000 -140 1080 -140 {
lab=GND}
N 460 -140 460 -120 {
lab=GND}
N 1080 -140 1200 -140 {
lab=GND}
N 460 -620 460 -240 {
lab=vdda}
N 460 -620 720 -620 {
lab=vdda}
N 720 -360 800 -360 {
lab=in}
N 960 -360 1040 -360 {
lab=vpb}
N 960 -340 1040 -340 {
lab=vpc}
N 720 -620 900 -620 {
lab=vdda}
N 880 -280 880 -140 {
lab=GND}
N 900 -620 900 -400 {
lab=vdda}
N 720 -620 720 -460 {
lab=vdda}
N 720 -400 720 -360 {
lab=in}
N 860 -580 860 -400 {
lab=vddd}
N 540 -580 860 -580 {
lab=vddd}
N 540 -580 540 -240 {
lab=vddd}
N 720 -140 880 -140 {
lab=GND}
N 540 -180 540 -140 {
lab=GND}
N 460 -180 460 -140 {
lab=GND}
N 720 -180 720 -140 {
lab=GND}
N 720 -320 720 -240 {
lab=en[2:1]}
N 720 -320 800 -320 {
lab=en[2:1]}
N 1000 -200 1000 -140 {
lab=GND}
N 880 -140 1000 -140 {
lab=GND}
N 460 -140 540 -140 {
lab=GND}
N 640 -140 720 -140 {
lab=GND}
N 1080 -160 1080 -140 {
lab=GND}
N 1080 -310 1080 -220 {
lab=out[2]}
N 1000 -310 1000 -260 {
lab=out[1]}
N 960 -320 1070 -320 {
lab=out[2:1]}
N 640 -180 640 -140 {
lab=GND}
N 640 -340 640 -240 {
lab=poweron}
N 640 -340 800 -340 {
lab=poweron}
N 1200 -240 1200 -140 {
lab=GND}
N 540 -140 640 -140 {
lab=GND}
N 1300 -240 1300 -140 {
lab=GND}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {devices/code_shown.sym} 1120 -890 0 0 {name=params only_toplevel=false value="* device parameters
.param l      = 8
.param w      = 2
.param nf     = 1
.param lc     = 0.5
.param wc     = 2
.param nfc    = 1
.param lb     = 8
.param wb     = 1
.param nfb    = 1
.param lnmos  = 8
.param wnmos  = 2
.param nfn    = 1
* instrumentation parameters
.param avdd   = 3.3
.param dvdd   = 1.8
.param ibias  = 200n
.param rload  = 100k
.param vofs   = 1
* simulation parameters
.param celsius = -40
.param imin   = 50n
.param imax   = 1u
.param iinc   = 50n"}
C {devices/gnd.sym} 460 -120 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 460 -210 0 0 {name=Vdda value=\{avdd\} savecurrent=true}
C {devices/isource.sym} 720 -430 0 1 {name=Ibias value=\{ibias\}}
C {devices/vsource.sym} 1200 -270 0 0 {name=Vres value=\{rload\} savecurrent=false}
C {devices/asrc.sym} 1000 -230 0 0 {name=Bload1 function="i=(v(out[1])-v(ofs))/v(res)"}
C {devices/lab_pin.sym} 1200 -320 0 1 {name=l5 lab=res}
C {devices/lab_wire.sym} 560 -620 0 1 {name=p7 lab=vdda
}
C {devices/vsource.sym} 1300 -270 0 0 {name=Vofs value=\{vofs\} savecurrent=false}
C {devices/lab_pin.sym} 1300 -320 0 1 {name=l4 lab=ofs}
C {devices/code.sym} 30 -220 0 0 {name=ss_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {devices/code_shown.sym} 80 -890 0 0 {name=NGSPICE only_toplevel=true value="* simulation directives
.option wnflag=1
.options gmin=1e-15 abstol=1p
.option savecurrents
.temp \{celsius\}
.dc Ibias \{imin\} \{imax\} \{iinc\}
.control
save all
run
let Iavg=(@bload1[i]+@bload2[i])/2
let dIio=Iavg-@ibias[current]
let dI=@bload2[i]-@bload1[i]
let dIio_I=dIio/@ibias[current]
let dI_I=dI/Iavg
write test_isweep.raw
.endc
" }
C {devices/lab_wire.sym} 770 -360 0 0 {name=p3 lab=in}
C {devices/lab_pin.sym} 1040 -360 0 1 {name=l6 lab=vpb}
C {devices/lab_pin.sym} 1040 -340 0 1 {name=l7 lab=vpc}
C {xschem/sky130_cm_ip__biasgen.sym} 880 -340 0 0 {name=xDUT l=\{l\} w=\{w\} nf=\{nf\} lc=\{lc\} wc=\{wc\} nfc=\{nfc\} lb=\{lb\} wb=\{wb\} nfb=\{nfb\} lnmos=\{lnmos\} wnmos=\{wnmos\} nfnmos=\{nfnmos\}}
C {devices/vsource.sym} 540 -210 0 0 {name=Vddd value=\{dvdd\} savecurrent=true}
C {devices/lab_wire.sym} 560 -580 0 1 {name=p1 lab=vddd
}
C {devices/vsource.sym} 720 -210 0 0 {name=Ven[2:1] value=\{dvdd\} savecurrent=true}
C {devices/lab_wire.sym} 770 -320 0 0 {name=p2 lab=en[2:1]}
C {devices/lab_wire.sym} 1030 -320 0 0 {name=p4 lab=out[2:1]}
C {devices/bus_tap.sym} 990 -320 1 0 {name=l8 lab=[1]}
C {devices/asrc.sym} 1080 -190 0 0 {name=Bload2 function="i=(v(out[2])-v(ofs))/v(res)"}
C {devices/bus_tap.sym} 1070 -320 1 0 {name=l10 lab=[2]}
C {devices/vsource.sym} 640 -210 0 0 {name=Vpoweron value=\{dvdd\} savecurrent=true}
C {devices/lab_wire.sym} 770 -340 0 0 {name=p5 lab=poweron}
