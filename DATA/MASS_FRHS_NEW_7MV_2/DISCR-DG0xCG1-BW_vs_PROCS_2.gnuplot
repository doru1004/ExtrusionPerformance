
#!/usr/bin/env gnuplot

set terminal pdfcairo enhanced color font 'Arial'

set autoscale
set termoption dash
set key outside right

set xrange[0:26]

set xlabel "{/=16 MPI Processes}"
set ylabel "{/=16 [MB/s]}"

              
set output "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-DG0xCG1-BW_vs_PROCS_2_plot.pdf"

set title "{/=14 2 Layers}"
plot  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-DG0xCG1-BW_vs_PROCS_2.dat" using 1:2 with linespoints linewidth 3 lt 2 lc rgb "blue" title "DG0xCG1-READ-BW",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-DG0xCG1-BW_vs_PROCS_2.dat" using 1:3 with linespoints linewidth 3 lt 3 lc rgb "royalblue" title "DG0xCG1-MAX-BW",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-DG0xCG1-BW_vs_PROCS_2.dat" using 1:4 with linespoints linewidth 3 lt 4 lc rgb "purple" title "DG0xCG1-VAL-BW",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-DG0xCG1-BW_vs_PROCS_2.dat" using 1:5 with linespoints linewidth 3 lt 5 lc rgb "magenta" title "DG0xCG1-UNORD-BW"