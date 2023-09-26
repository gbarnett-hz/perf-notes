set title 'Interval Mean' noenhanced
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
set output '/Users/gbarnett/git/hazelcast-simulator/atomicreference/3and5and7/latency/latency_interval_mean_write.png'
plot \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/3and5and7/data/latency_interval_mean_write_1.data' using (t0(timecolumn(1))):2 title "3member" noenhanced lt rgb "red", \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/3and5and7/data/latency_interval_mean_write_2.data' using (t0(timecolumn(1))):2 title "5member" noenhanced lt rgb "blue", \
   '/Users/gbarnett/git/hazelcast-simulator/atomicreference/3and5and7/data/latency_interval_mean_write_3.data' using (t0(timecolumn(1))):2 title "7member" noenhanced lt rgb "forest-green", \
