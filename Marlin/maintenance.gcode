;start hotend heating
M104 S100
M105

M204 P1200.00 R1000.00 T1200.00 ;Setup Print/Retract/Travel acceleration
M205 X10.00 Y10.00 Z0.40 E5.00 ;Setup Jerk

;home
G28

;go to maintenance location
G90 ;absolute positioning
G0 Z50.0 F3000
G0 Y210.0 F5000
G0 Z260.0 F3000

;wait for hotend temperature
M109 S100
