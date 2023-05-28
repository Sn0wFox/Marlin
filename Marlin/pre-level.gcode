;start bead heating
M140 S65
M105

M204 P1200.00 R1000.00 T1200.00 ;Setup Print/Retract/Travel acceleration
M205 X10.00 Y10.00 Z0.40 E5.00 ;Setup Jerk

;home
G28
;wait for bed temperature
M190 S65

;now you may run the G29 codes from the LCD screen
