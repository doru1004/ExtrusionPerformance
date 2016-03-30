
#!/usr/bin/env gnuplot

set terminal pdfcairo enhanced color font 'Arial'

set autoscale
set termoption dash
set key outside right

set xrange[0:26]

set xlabel "{/=16 MPI Processes}"
set ylabel "{/=16 [MB/s]}"

              
set output "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-CG1xDG0-BW_vs_PROCS_10_plot.pdf"

set title "{/=14 10 Layers}"
plot  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-CG1xDG0-BW_vs_PROCS_10.dat" using 1:2 with linespoints linewidth 3 lt 2 lc rgb "blue" title "CG1xDG0-READ-BW",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-CG1xDG0-BW_vs_PROCS_10.dat" using 1:3 with linespoints linewidth 3 lt 3 lc rgb "royalblue" title "CG1xDG0-MAX-BW",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-CG1xDG0-BW_vs_PROCS_10.dat" using 1:4 with linespoints linewidth 3 lt 4 lc rgb "purple" title "CG1xDG0-VAL-BW",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-CG1xDG0-BW_vs_PROCS_10.dat" using 1:5 with linespoints linewidth 3 lt 5 lc rgb "magenta" title "CG1xDG0-UNORD-BW"