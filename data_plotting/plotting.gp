set terminal png size 1280, 1024 font "Noto Mono, 18"
set output 'output.png'


if (!exists("MP_LEFT"))   MP_LEFT = .1
if (!exists("MP_RIGHT"))  MP_RIGHT = .95
if (!exists("MP_BOTTOM")) MP_BOTTOM = .08
if (!exists("MP_TOP"))    MP_TOP = .96
if (!exists("MP_xGAP"))   MP_xGAP = 0.11
if (!exists("MP_yGAP"))   MP_yGAP = 0.1
set multiplot layout 2, 2 margins screen MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP spacing screen MP_xGAP, MP_yGAP

set grid lw 1.5 

set xrange [0:20]

set xlabel 't, sec' font 'Noto Mono, 18'
set ylabel 'V_x, x-component of speed' font 'Noto Mono, 18'
plot 'data_t_vx_x_vy_y.dat' using 1:2 w l lc 1 lw 4 notitle 
unset ylabel

set ylabel 'V_y, y-component of speed'
plot 'data_t_vx_x_vy_y.dat' using 1:4 w l lc 2 lw 4 notitle 
unset ylabel

set ylabel 'x-coordinate'
plot 'data_t_vx_x_vy_y.dat' using 1:3 w l lc 3 lw 4 notitle
unset ylabel

set ylabel 'y-coordinate'
plot 'data_t_vx_x_vy_y.dat' using 1:2 w l lc 4 lw 4 notitle
