v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 -330 500 -300 {
lab=VP}
N 500 -240 500 -210 {
lab=VN}
N 420 -230 460 -230 {
lab=ref}
N 420 -310 460 -310 {
lab=ofs}
N 420 -270 460 -270 {
lab=ref}
C {devices/asrc.sym} 500 -270 0 0 {name=Bload function="i=(v(VP-VN)-v(ofs,ref))/v(res,ref)"}
C {devices/iopin.sym} 500 -330 1 1 {name=p3 lab=VP}
C {devices/iopin.sym} 500 -210 3 1 {name=p1 lab=VN}
C {devices/iopin.sym} 420 -230 0 1 {name=p2 lab=ref}
C {devices/iopin.sym} 420 -310 0 1 {name=p4 lab=ofs}
C {devices/iopin.sym} 420 -270 0 1 {name=p5 lab=res}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
