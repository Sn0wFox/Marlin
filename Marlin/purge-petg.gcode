;start hotend heating
M104 S230
M105

M82 ;absolute extrusion mode
M204 P1200.00 R1000.00 T1200.00 ;Setup Print/Retract/Travel acceleration
M205 X10.00 Y10.00 Z0.40 E5.00 ;Setup Jerk

;home
G28

;go to purge location
G90 ;absolute positioning
G0 Z50.0 F3000
G0 Y110.0 F5000

;wait for hotend temperature
M109 S230

;reset extruder
G92 E0

;extrude for purge
G1 E120.0 F1800
G92 E0
G1 E-0.5 F1800
G1 E20.0 F1800
G92 E0
G1 E-0.5 F1800
G1 E3.0 F1800
G1 E2.5 F1800
G1 E5.0 F1800
G1 E4.5 F1800
G1 E7.0 F1800
G1 E6.5 F1800
G1 E9.0 F1800
G1 E8.5 F1800
G1 E15.0 F1800
