# Simple script for creating Y/M/D yr's for resoting my photo library file struct.
for yr in {2000..2013}
do
    mkdir $yr
    for m in {1..12}
    do
        # This is an awesome way of 0-padding numbers! :)
        # Credit goes to: http://jonathanwagner.net/2007/04/zero-padding-in-bash/
        mon=`printf "%02d" $m`
        mkdir $yr/$mon
        for d in {1..31}
        do
            day=`printf "%02d" $d`
            mkdir $yr/$mon/$day
        done
    done
done