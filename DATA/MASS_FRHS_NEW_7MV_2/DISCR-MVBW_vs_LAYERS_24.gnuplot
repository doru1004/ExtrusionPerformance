
#!/usr/bin/env gnuplot

set terminal pdfcairo enhanced color font 'Arial'

set autoscale
set termoption dash
set key outside right

set xrange[0:100]

set xlabel "{/=16 Layers}"
set ylabel "{/=16 Valuable BW [MB/s]}"

              
set output "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-MVBW_vs_LAYERS_24_plot.pdf"

set title "{/=14 24 MPI Processes}"
plot  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-MVBW_vs_LAYERS_24.dat" using 1:2 with linespoints linewidth 3 lt 2 lc rgb "blue" title "CG1xCG1",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-MVBW_vs_LAYERS_24.dat" using 1:3 with linespoints linewidth 3 lt 3 lc rgb "royalblue" title "CG1xDG0",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-MVBW_vs_LAYERS_24.dat" using 1:4 with linespoints linewidth 3 lt 4 lc rgb "purple" title "CG1xDG1",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-MVBW_vs_LAYERS_24.dat" using 1:5 with linespoints linewidth 3 lt 5 lc rgb "magenta" title "DG0xCG1",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-MVBW_vs_LAYERS_24.dat" using 1:6 with linespoints linewidth 3 lt 1 lc rgb "#A52A2A" title "DG0xDG0",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-MVBW_vs_LAYERS_24.dat" using 1:7 with linespoints linewidth 3 lt 6 lc rgb "red" title "DG0xDG1",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-MVBW_vs_LAYERS_24.dat" using 1:8 with linespoints linewidth 3 lt 7 lc rgb "#FF00FF" title "DG1xCG1",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-MVBW_vs_LAYERS_24.dat" using 1:9 with linespoints linewidth 3 lt 8 lc rgb "#FF1493" title "DG1xDG0",  "/data/gb308/firedrake/PerformanceTesting/TOMS/MASS_FRHS_NEW_7MV_2/DISCR-MVBW_vs_LAYERS_24.dat" using 1:10 with linespoints linewidth 3 lt 9 lc rgb "#006400" title "DG1xDG1"