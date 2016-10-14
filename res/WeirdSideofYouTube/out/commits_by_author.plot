set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'commits_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Commits"
set xtics rotate
set bmargin 6
plot 'commits_by_author.dat' using 1:2 title "Michael Metrocavich" w lines, 'commits_by_author.dat' using 1:3 title "Alexander Metrocavich" w lines, 'commits_by_author.dat' using 1:4 title "mmetro" w lines, 'commits_by_author.dat' using 1:5 title "Jake Martin" w lines, 'commits_by_author.dat' using 1:6 title "axptwig" w lines, 'commits_by_author.dat' using 1:7 title "Ashwin" w lines, 'commits_by_author.dat' using 1:8 title "zielim" w lines, 'commits_by_author.dat' using 1:9 title "baktie" w lines, 'commits_by_author.dat' using 1:10 title "jacobjiggler" w lines, 'commits_by_author.dat' using 1:11 title "Jacob Martin" w lines, 'commits_by_author.dat' using 1:12 title "Ashwin Raghuraman" w lines
