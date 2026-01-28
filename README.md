# Mandelbrot Set in Fortran 95

This project generates the Mandelbrot set using **Fortran 95** for numerical computation and **Gnuplot** for visualization.

##  How to run
1. **Compile:** `f95 Mandelbrot.f95 -o mandelbrot`
2. **Generate data:** `./mandelbrot`
3. **Visualize:** `gnuplot -p visualize.plt`

##  Visualization
The Gnuplot script is optimized for remote connections (SSH/X11) by using `with dots` and point skipping (`every 2:2`) for near-instant rendering.
