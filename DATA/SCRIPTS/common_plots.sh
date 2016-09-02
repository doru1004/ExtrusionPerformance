#!/bin/bash
greedy_reader="${PWD}/../../greedy_reader_gnuplot.py"

# TODO: change this to be more general and not taylored to this particular situation
threads="0"
layers="1"
prod_space="2"
rt="3"
vbw="5"
mbw="6"
xtra="7"
xtraps="8"

# MVBW
mvbw="9"

# RVBW
rvbw="10"

# Generic Likwid counter
lik_counter="11"

# Args
res="$3"
gnuplot_dir="$4"

#Runtime aggregator
runtime="avg"
#Bandwidth aggregator
bandw="sum"

gnuplot_out="$1_vbw_vs_threads_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $layers $prod_space $threads $vbw

gnuplot_out="$1_vbw_vs_layers_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $threads $prod_space $layers $vbw

gnuplot_out="$1_mbw_vs_threads_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $layers $prod_space $threads $mbw

gnuplot_out="$1_mbw_vs_layers_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $threads $prod_space $layers $mbw

gnuplot_out="$1_rt_vs_threads_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $layers $prod_space $threads $rt

gnuplot_out="$1_rt_vs_layers_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $threads $prod_space $layers $rt

gnuplot_out="$1_xtra_vs_threads_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $layers $prod_space $threads $xtra

gnuplot_out="$1_xtra_vs_layers_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $threads $prod_space $layers $xtra

gnuplot_out="$1_xtraps_vs_threads_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $layers $prod_space $threads $xtraps

gnuplot_out="$1_xtraps_vs_layers_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $threads $prod_space $layers $xtraps

gnuplot_out="$1_mvbw_vs_threads_$2" 
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $layers $prod_space $threads $mvbw

gnuplot_out="$1_mvbw_vs_layers_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $threads $prod_space $layers $mvbw

gnuplot_out="$1_rvbw_vs_threads_$2" 
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $layers $prod_space $threads $rvbw

gnuplot_out="$1_rvbw_vs_layers_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $threads $prod_space $layers $rvbw

gnuplot_out="$1_rvbw_vs_threads_$2" 
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $layers $prod_space $threads $rvbw

gnuplot_out="$1_rvbw_vs_layers_$2"
python $greedy_reader $res $runtime $bandw $gnuplot_out $gnuplot_dir $threads $prod_space $layers $rvbw

for entry in "$gnuplot_dir"/*."gnuplot"
do
    gnuplot $entry
done
