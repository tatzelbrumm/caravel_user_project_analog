v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Testbench for simple POR} -350 -240 0 0 0.6 0.6 {}
N -280 60 -10 60 { lab=GND}
N -540 0 -540 60 { lab=GND}
N -330 0 -330 60 { lab=GND}
N -330 -100 -330 -60 { lab=vdd3v3}
N -330 -110 -330 -100 { lab=vdd3v3}
N -210 -110 -40 -110 { lab=vdd3v3}
N -40 -110 -40 -100 { lab=vdd3v3}
N -540 -130 -540 -60 { lab=vdd1v8}
N -280 -130 20 -130 { lab=vdd1v8}
N 20 -130 20 -100 { lab=vdd1v8}
N 140 -50 180 -50 { lab=porb_h}
N 140 -20 180 -20 { lab=porb_l}
N 140 10 180 10 { lab=por_l}
N -340 -110 -330 -110 { lab=vdd3v3}
N -500 -130 -490 -130 { lab=vdd1v8}
N -540 -130 -500 -130 { lab=vdd1v8}
N -560 -130 -540 -130 { lab=vdd1v8}
N -540 60 -490 60 { lab=GND}
N -490 -130 -280 -130 { lab=vdd1v8}
N -490 60 -330 60 { lab=GND}
N -330 60 -280 60 { lab=GND}
N -330 -110 -210 -110 { lab=vdd3v3}
C {example_por.sym} -10 -20 0 0 {name=x1}
C {devices/gnd.sym} -100 60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -330 -30 0 0 {name=V1 value="PWL(0.0 0 100u 0 5m 3.3)"}
C {devices/vsource.sym} -540 -30 0 0 {name=V2 value="PWL(0.0 0 300u 0 5.3m 1.8)"}
C {devices/opin.sym} -340 -110 0 1 {name=p1 lab=vdd3v3}
C {devices/opin.sym} -560 -130 0 1 {name=p2 lab=vdd1v8}
C {devices/opin.sym} 180 -50 0 0 {name=p3 lab=porb_h}
C {devices/opin.sym} 180 -20 0 0 {name=p4 lab=porb_l}
C {devices/opin.sym} 180 10 0 0 {name=p5 lab=por_l}
C {devices/code_shown.sym} -470 140 0 0 {name=s1 only_toplevel=false value=".param mc_mm_switch=0
*.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"}
C {devices/code_shown.sym} -470 250 0 0 {name=s2 only_toplevel=false value=".control
tran 1u 20m
plot V(vdd3v3) V(vdd1v8) V(porb_h) V(porb_l) V(por_l)
.endc"}
C {devices/code.sym} -630 150 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
