set title 'Interval 99.999%' noenhanced
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
set ylabel 'Latency (μs)'
set output '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/latency/latency_interval_99999_write.png'
plot \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_interval_99999_write_1.data' using (t0(timecolumn(1))):2 title "1kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_interval_99999_write_2.data' using (t0(timecolumn(1))):2 title "2kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_interval_99999_write_3.data' using (t0(timecolumn(1))):2 title "4kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_interval_99999_write_4.data' using (t0(timecolumn(1))):2 title "8kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_interval_99999_write_5.data' using (t0(timecolumn(1))):2 title "16kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_interval_99999_write_6.data' using (t0(timecolumn(1))):2 title "32kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_interval_99999_write_7.data' using (t0(timecolumn(1))):2 title "64kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_interval_99999_write_8.data' using (t0(timecolumn(1))):2 title "128kb" noenhanced , \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/1to25-legend/data/latency_interval_99999_write_9.data' using (t0(timecolumn(1))):2 title "256kb" noenhanced , \
