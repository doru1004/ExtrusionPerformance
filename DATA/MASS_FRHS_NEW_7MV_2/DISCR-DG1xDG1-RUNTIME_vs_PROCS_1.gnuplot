
#!/usr/bin/env gnuplot

set terminal pdfcairo enhanced color font 'Arial'

set autoscale
set termoption dash
set key outside right

set xrange[0:26]

set xlabel "{/=16 MPI Processes}"
set ylabel "{/=16 [s]}"

              
set output "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-DG1xDG1-RUNTIME_vs_PROCS_1_plot.pdf"

set title "{/=14 1 Layers}"
plot  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-DG1xDG1-RUNTIME_vs_PROCS_1.dat" using 1:2 with linespoints linewidth 3 lt 2 lc rgb "blue" title "DG1xDG1-IDEAL",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-DG1xDG1-RUNTIME_vs_PROCS_1.dat" using 1:3 with linespoints linewidth 3 lt 3 lc rgb "royalblue" title "DG1xDG1-MEASURED"