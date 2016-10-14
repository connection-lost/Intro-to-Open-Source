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
plot 'commits_by_author.dat' using 1:2 title "Barb Cutler" w lines, 'commits_by_author.dat' using 1:3 title "Matthew Peveler" w lines, 'commits_by_author.dat' using 1:4 title "kmcnellis" w lines, 'commits_by_author.dat' using 1:5 title "Samuel Seng" w lines, 'commits_by_author.dat' using 1:6 title "Jesse Freitas" w lines, 'commits_by_author.dat' using 1:7 title "seveibar" w lines, 'commits_by_author.dat' using 1:8 title "inlinefan" w lines, 'commits_by_author.dat' using 1:9 title "Peter Bailie" w lines, 'commits_by_author.dat' using 1:10 title "Chris Berger" w lines, 'commits_by_author.dat' using 1:11 title "Barb" w lines, 'commits_by_author.dat' using 1:12 title "Samuel Breese" w lines, 'commits_by_author.dat' using 1:13 title "bmcutler" w lines, 'commits_by_author.dat' using 1:14 title "0xWinstonSmith" w lines, 'commits_by_author.dat' using 1:15 title "sihsob" w lines, 'commits_by_author.dat' using 1:16 title "ZishanHuang" w lines, 'commits_by_author.dat' using 1:17 title "pbailie" w lines, 'commits_by_author.dat' using 1:18 title "Seve" w lines, 'commits_by_author.dat' using 1:19 title "root" w lines, 'commits_by_author.dat' using 1:20 title "Ana Milanova" w lines, 'commits_by_author.dat' using 1:21 title "Jeramey Tyler" w lines
