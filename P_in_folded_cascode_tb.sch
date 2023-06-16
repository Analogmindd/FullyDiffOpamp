v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -100 -130 -100 -70 {
lab=#net1}
N -100 -130 -50 -130 {
lab=#net1}
N -150 -70 -100 -70 {
lab=#net1}
N -260 -70 -210 -70 {
lab=VINP}
N 10 -130 70 -130 {
lab=#net2}
N -100 30 -100 90 {
lab=#net3}
N -100 90 -50 90 {
lab=#net3}
N -150 30 -100 30 {
lab=#net3}
N -260 30 -210 30 {
lab=VINN}
N 10 90 70 90 {
lab=#net4}
N 110 -120 190 -120 {
lab=VOUTN}
N 110 80 190 80 {
lab=VOUTP}
N 110 20 110 40 {
lab=GNDA}
N 70 20 110 20 {
lab=GNDA}
N 70 20 70 30 {
lab=GNDA}
N 70 -70 70 -60 {
lab=GNDA}
N 70 -60 110 -60 {
lab=GNDA}
N 110 -80 110 -60 {
lab=GNDA}
N -100 10 -100 30 {
lab=#net3}
N -100 10 -60 10 {
lab=#net3}
N -100 -70 -100 -50 {
lab=#net1}
N -100 -50 -60 -50 {
lab=#net1}
N 50 -40 180 -40 {
lab=VOUTN}
N 180 -120 180 -40 {
lab=VOUTN}
N 50 0 180 0 {
lab=VOUTP}
N 180 0 180 80 {
lab=VOUTP}
N -530 220 -530 260 {
lab=0}
N -530 120 -530 160 {
lab=GNDA}
N -530 -120 -530 -80 {
lab=GNDA}
N -530 -220 -530 -180 {
lab=VINP}
N -430 -80 -430 -40 {
lab=GNDA}
N -430 -180 -430 -140 {
lab=VINN}
N -430 -200 -430 -180 {
lab=VINN}
N -530 -240 -530 -220 {
lab=VINP}
C {P_in_folded_cascode.sym} 10 -20 0 0 {name=x1}
C {devices/capa.sym} 220 -120 3 1 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 220 80 1 0 {name=C4
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 250 -120 0 1 {name=l38 sig_type=std_logic lab=GNDA}
C {devices/lab_pin.sym} 250 80 0 1 {name=l39 sig_type=std_logic lab=GNDA}
C {devices/res.sym} -20 -130 1 0 {name=R7
value=1
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -180 -70 1 0 {name=R8
value=1
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -20 90 1 1 {name=R9
value=1
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -180 30 1 1 {name=R10
value=1
footprint=1206
device=resistor
m=1}
C {devices/vcvs.sym} 70 -100 0 1 {name=E1 value=1}
C {devices/vcvs.sym} 70 60 2 0 {name=E2 value=1}
C {devices/lab_pin.sym} 110 20 2 0 {name=l57 sig_type=std_logic lab=GNDA}
C {devices/lab_pin.sym} 110 -60 2 0 {name=l1 sig_type=std_logic lab=GNDA}
C {devices/vsource.sym} -530 190 0 0 {name=V2 value=0}
C {devices/vsource.sym} -530 -150 0 0 {name=V5 value="PULSE 0 0.5 1u 0 0 1u"}
C {devices/lab_pin.sym} -530 260 3 0 {name=l40 sig_type=std_logic lab=0
}
C {devices/lab_pin.sym} -530 120 1 0 {name=l41 sig_type=std_logic lab=GNDA}
C {devices/lab_pin.sym} -530 -80 3 0 {name=l46 sig_type=std_logic lab=GNDA}
C {devices/lab_pin.sym} -430 -40 3 0 {name=l47 sig_type=std_logic lab=GNDA}
C {devices/lab_pin.sym} -530 -240 1 0 {name=l49 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} -430 -200 1 0 {name=l50 sig_type=std_logic lab=VINN}
C {devices/lab_pin.sym} -260 -70 0 0 {name=l2 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} -260 30 0 0 {name=l3 sig_type=std_logic lab=VINN}
C {devices/lab_pin.sym} 180 -50 2 0 {name=l4 sig_type=std_logic lab=VOUTN}
C {devices/lab_pin.sym} 180 10 2 0 {name=l5 sig_type=std_logic lab=VOUTP}
C {devices/code_shown.sym} -1050 -900 0 0 {name=COMMAND_BLOCK1 only_toplevel="false" value=".control
save all

tran 1n 2u
*op
*ac dec 100 1 100T
*setplot new
*let frequency = ac.frequency
*let T = ac.voutp-ac.voutn
*let T_mag = db(T)
*let T_ph  = cph(T)*180/pi

*let T1 = ac.voutpc
*let PSRR = T/T1
*let PSRR_mag = db(PSRR)
*let PSRR_ph  = cph(PSRR)*180/pi
*let T1_mag = db(T1)
let T1_ph  = cph(T1)*180/pi
*let T2 = (ac.outp-ac.outn)/(ac.outp1-ac.outn1)
*let T2_mag = db(T2)
*let T2_ph  = cph(T2)*180/pi
*plot T_mag T_ph xlog
*plot T1_mag T1_ph xlog
*plot PSRR_mag PSRR_ph xlog
write P_in_folded_cascode_tb.raw
.endc"}
C {devices/vsource.sym} -430 -110 0 0 {name=V1 value="PULSE 0 -0.5 1u 0 0 1u"}
C {devices/code.sym} -420 110 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ff

"
spice_ignore=false}
