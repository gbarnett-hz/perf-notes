set title 'Throughput' noenhanced
set style data lines
set datafile separator ","
set terminal png size 1280,1024
set grid
set key below
set xdata time
set timefmt "%s"
offset = 0
t0(x)=(offset=($0==0) ? x : offset, x - offset)
set xlabel 'Time minutes:seconds'
set ylabel 'Operations/sec'
set output '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/throughput/throughput.png'
plot \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/throughput_1.data' using (t0(timecolumn(1))):2 title "1kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/throughput_2.data' using (t0(timecolumn(1))):2 title "2kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/throughput_3.data' using (t0(timecolumn(1))):2 title "4kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/throughput_4.data' using (t0(timecolumn(1))):2 title "8kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/throughput_5.data' using (t0(timecolumn(1))):2 title "16kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/throughput_6.data' using (t0(timecolumn(1))):2 title "32kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/throughput_7.data' using (t0(timecolumn(1))):2 title "64kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/throughput_8.data' using (t0(timecolumn(1))):2 title "128kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/throughput_9.data' using (t0(timecolumn(1))):2 title "256kb" noenhanced , \
