set datafile separator ","
set title 'Latency distribution' noenhanced
set terminal png size 1280,1024
set grid
unset xtics
set ylabel 'Latency (μs)'
set logscale x
set key top left
set style line 1 lt 1 lw 3 pt 3 linecolor rgb "red"
set output '/Users/gbarnett/git/hazelcast-simulator/atomicreference/3and5and7/latency/latency_distribution_write.png'
plot '/Users/gbarnett/git/hazelcast-simulator/src/simulator/xlabels.csv' notitle with labels center offset 0, 1.5 point,\
   "/Users/gbarnett/git/hazelcast-simulator/atomicreference/3and5and7/data/latency_distribution_write_1.data" using 1:2 title "3member" noenhanced lt rgb "red" with lines, \
   "/Users/gbarnett/git/hazelcast-simulator/atomicreference/3and5and7/data/latency_distribution_write_2.data" using 1:2 title "5member" noenhanced lt rgb "blue" with lines, \
   "/Users/gbarnett/git/hazelcast-simulator/atomicreference/3and5and7/data/latency_distribution_write_3.data" using 1:2 title "7member" noenhanced lt rgb "forest-green" with lines, \
