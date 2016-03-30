
#!/usr/bin/env gnuplot

set terminal pdfcairo enhanced color font 'Arial'

set autoscale
set termoption dash
set key outside right

set xrange[0:26]

set xlabel "{/=16 MPI Processes}"
set ylabel "{/=16 [s]}"

              
set output "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-CG1xDG1-RUNTIME_vs_PROCS_4_plot.pdf"

set title "{/=14 4 Layers}"
plot  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-CG1xDG1-RUNTIME_vs_PROCS_4.dat" using 1:2 with linespoints linewidth 3 lt 2 lc rgb "blue" title "CG1xDG1-IDEAL",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-CG1xDG1-RUNTIME_vs_PROCS_4.dat" using 1:3 with linespoints linewidth 3 lt 3 lc rgb "royalblue" title "CG1xDG1-MEASURED"