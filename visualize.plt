reset

set view map

set size ratio -1

set title "Mandelbrot set"

set xlabel "Re(z)"

set ylabel "Im(z)"

set palette rgbformulae 33,13,10

plot "Mandelbrot_set.dat" every 2:2 using 1:2:3 with dots lc palette
