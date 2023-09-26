set datafile separator ","
set title 'Latency distribution' noenhanced
set terminal png size 1280,1024
set grid
unset xtics
set ylabel 'Latency (μs)'
set logscale x
set key top left
set style line 1 lt 1 lw 3 pt 3 linecolor rgb "red"
set output '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/latency/latency_distribution_write.png'
plot '/Users/gbarnett/git/hazelcast-simulator/src/simulator/xlabels.csv' notitle with labels center offset 0, 1.5 point,\
   "/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_distribution_write_1.data" using 1:2 title "1kb" noenhanced  with lines, \
   "/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_distribution_write_2.data" using 1:2 title "2kb" noenhanced  with lines, \
   "/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_distribution_write_3.data" using 1:2 title "4kb" noenhanced  with lines, \
   "/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_distribution_write_4.data" using 1:2 title "8kb" noenhanced  with lines, \
   "/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_distribution_write_5.data" using 1:2 title "16kb" noenhanced  with lines, \
   "/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_distribution_write_6.data" using 1:2 title "32kb" noenhanced  with lines, \
   "/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_distribution_write_7.data" using 1:2 title "64kb" noenhanced  with lines, \
   "/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_distribution_write_8.data" using 1:2 title "128kb" noenhanced  with lines, \
   "/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_distribution_write_9.data" using 1:2 title "256kb" noenhanced  with lines, \
