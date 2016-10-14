set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'lines_of_code_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Lines"
set xtics rotate
set bmargin 6
plot 'lines_of_code_by_author.dat' using 1:2 title "Barb Cutler" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Matthew Peveler" w lines, 'lines_of_code_by_author.dat' using 1:4 title "kmcnellis" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Samuel Seng" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Jesse Freitas" w lines, 'lines_of_code_by_author.dat' using 1:7 title "seveibar" w lines, 'lines_of_code_by_author.dat' using 1:8 title "inlinefan" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Peter Bailie" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Chris Berger" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Barb" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Samuel Breese" w lines, 'lines_of_code_by_author.dat' using 1:13 title "bmcutler" w lines, 'lines_of_code_by_author.dat' using 1:14 title "0xWinstonSmith" w lines, 'lines_of_code_by_author.dat' using 1:15 title "sihsob" w lines, 'lines_of_code_by_author.dat' using 1:16 title "ZishanHuang" w lines, 'lines_of_code_by_author.dat' using 1:17 title "pbailie" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Seve" w lines, 'lines_of_code_by_author.dat' using 1:19 title "root" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Ana Milanova" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Jeramey Tyler" w lines
