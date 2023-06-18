v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -333.75 198.75 -333.75 238.75 {
lab=0}
N -333.75 98.75 -333.75 138.75 {
lab=GNDA}
N -333.75 -141.25 -333.75 -101.25 {
lab=GNDA}
N -333.75 -241.25 -333.75 -201.25 {
lab=VINP}
N -233.75 -101.25 -233.75 -61.25 {
lab=GNDA}
N -233.75 -201.25 -233.75 -161.25 {
lab=VINN}
N -233.75 -221.25 -233.75 -201.25 {
lab=VINN}
N -333.75 -261.25 -333.75 -241.25 {
lab=VINP}
N -413.75 198.75 -413.75 238.75 {
lab=GNDA}
N -413.75 98.75 -413.75 138.75 {
lab=VDDA}
N 186.25 -101.25 186.25 -91.25 {
lab=VDDA}
N 206.25 -91.25 206.25 -81.25 {
lab=VREF}
N -263.75 98.75 -263.75 138.75 {
lab=VREF}
N -263.75 198.75 -263.75 238.75 {
lab=GNDA}
N 198.75 -91.25 206.25 -91.25 {
lab=VREF}
N 198.75 -91.25 198.75 -87.5 {
lab=VREF}
N 206.25 118.75 206.25 128.75 {
lab=VREF}
N 198.75 118.75 206.25 118.75 {
lab=VREF}
N 198.75 118.75 198.75 122.5 {
lab=VREF}
N 186.875 333.125 186.875 343.125 {
lab=VDDA}
N 199.375 343.125 199.375 346.875 {
lab=#net1}
N 186.25 55 186.875 53.125 {
lab=#net2}
N 246.25 -61.25 276.25 -61.25 {
lab=VOUTN_BASE}
C {devices/vsource.sym} -333.75 168.75 0 0 {name=V2 value=0}
C {devices/vsource.sym} -333.75 -171.25 0 0 {name=V5 value="0.7"}
C {devices/lab_pin.sym} -333.75 238.75 3 0 {name=l40 sig_type=std_logic lab=0
}
C {devices/lab_pin.sym} -333.75 98.75 1 0 {name=l41 sig_type=std_logic lab=GNDA}
C {devices/lab_pin.sym} -333.75 -101.25 3 0 {name=l46 sig_type=std_logic lab=GNDA}
C {devices/lab_pin.sym} -233.75 -61.25 3 0 {name=l47 sig_type=std_logic lab=GNDA}
C {devices/lab_pin.sym} -333.75 -261.25 1 0 {name=l49 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} -233.75 -221.25 1 0 {name=l50 sig_type=std_logic lab=VINN}
C {devices/lab_pin.sym} 76.25 -71.25 0 0 {name=l2 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} 76.25 -11.25 0 0 {name=l3 sig_type=std_logic lab=VINN}
C {devices/lab_pin.sym} 276.25 -61.25 2 0 {name=l4 sig_type=std_logic lab=VOUTN_BASE}
C {devices/lab_pin.sym} 246.25 -21.25 2 0 {name=l5 sig_type=std_logic lab=VOUTP_BASE}
C {devices/code.sym} -223.75 88.75 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ff

"
spice_ignore=false}
C {devices/vsource.sym} -233.75 -131.25 0 0 {name=V1 value="0.7"}
C {P_in_folded_cascode.sym} 206.25 -41.25 0 0 {name=x1}
C {devices/lab_pin.sym} 186.25 8.75 2 0 {name=l6 sig_type=std_logic lab=GNDA}
C {devices/vsource.sym} -413.75 168.75 0 0 {name=V3 only_toplevel="true" value=1.8}
C {devices/lab_pin.sym} -413.75 238.75 3 0 {name=l42 sig_type=std_logic lab=GNDA}
C {devices/lab_pin.sym} -413.75 98.75 1 0 {name=l43 sig_type=std_logic lab=VDDA
}
C {devices/lab_pin.sym} 186.25 -101.25 2 0 {name=l7 sig_type=std_logic lab=VDDA}
C {devices/lab_pin.sym} 206.25 -81.25 2 0 {name=l8 sig_type=std_logic lab=VREF}
C {devices/vsource.sym} -263.75 168.75 0 0 {name=V4 only_toplevel="true" value=0.9}
C {devices/lab_pin.sym} -263.75 238.75 3 0 {name=l44 sig_type=std_logic lab=GNDA}
C {devices/lab_pin.sym} -263.75 98.75 3 1 {name=l45 sig_type=std_logic lab=VREF}
C {devices/vsource.sym} 106.25 -71.25 1 0 {name=V6 value="AC 0.5"}
C {devices/vsource.sym} 106.25 -11.25 1 0 {name=V7 value="AC -0.5"}
C {devices/lab_pin.sym} 246.25 148.75 2 0 {name=l10 sig_type=std_logic lab=VOUTN_PS}
C {devices/lab_pin.sym} 246.25 188.75 2 0 {name=l11 sig_type=std_logic lab=VOUTP_PS}
C {P_in_folded_cascode.sym} 206.25 168.75 0 0 {name=x2}
C {devices/lab_pin.sym} 186.25 218.75 2 0 {name=l12 sig_type=std_logic lab=GNDA}
C {devices/lab_pin.sym} 186.25 53.75 2 0 {name=l13 sig_type=std_logic lab=VDDA}
C {devices/lab_pin.sym} 206.25 128.75 2 0 {name=l14 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 136.25 138.75 0 0 {name=l15 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} 136.25 198.75 0 0 {name=l16 sig_type=std_logic lab=VINN}
C {devices/vsource.sym} 186.25 83.75 2 0 {name=V8 value="AC 1"}
C {devices/lab_pin.sym} 246.875 373.125 2 0 {name=l1 sig_type=std_logic lab=VOUTN_CM}
C {devices/lab_pin.sym} 246.875 413.125 2 0 {name=l9 sig_type=std_logic lab=VOUTP_CM}
C {P_in_folded_cascode.sym} 206.875 393.125 0 0 {name=x3}
C {devices/lab_pin.sym} 186.875 443.125 2 0 {name=l17 sig_type=std_logic lab=GNDA}
C {devices/lab_pin.sym} 186.875 338.125 0 0 {name=l18 sig_type=std_logic lab=VDDA}
C {devices/lab_pin.sym} 199.375 284.375 2 0 {name=l19 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 136.875 363.125 0 0 {name=l20 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} 136.875 423.125 0 0 {name=l21 sig_type=std_logic lab=VINN}
C {devices/vsource.sym} 199.375 314.375 2 0 {name=V9 value="AC 1"}
C {devices/code_shown.sym} -914.375 -181.875 0 0 {name=COMMAND_BLOCK1 only_toplevel="true" value=".control
save all
*op
ac dec 100 1 100T
setplot new
let frequency = ac.frequency
let T = ac.voutp_base-ac.voutn_base
let T_mag = db(T)
let T_ph  = cph(T)*180/pi

let T1 = ac.voutp_ps
let PSRR = T/T1
let PSRR_mag = db(PSRR)
let PSRR_ph  = cph(PSRR)*180/pi
let T1_mag = db(T1)
let T1_ph  = cph(T1)*180/pi
let T2 = (ac.voutp_cm-ac.voutn_cm)
let T2_mag = db(T2)
let T2_ph  = cph(T2)*180/pi
let CMRR = T/T2
let CMRR_mag = db(CMRR)
let CMRR_ph = cph(CMRR)*180/pi
plot T_mag T_ph xlog
plot T1_mag T1_ph xlog
plot PSRR_mag PSRR_ph xlog
plot CMRR_mag CMRR_ph xlog
write P_in_folded_cascode.raw
.endc"}
