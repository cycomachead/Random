# Simple script for creating Y/M/D dir's for resoting my photo library file struct.
for dir in {2000..2013}
do
    mkdir $dir
    cd $dir
    for mon in "Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec"
    do
        mkdir $mon
        cd $mon
        for d in {1..31}
        do
            mkdir $d
        done
        cd ..
    done
    cd ..
done