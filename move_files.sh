# Script to move files into the proper folders based on modification date.
# dest dir
destDir="/Volumes/Macintosh HD/Users/Michael/Documents/Recovery/Photos"
# directory from Rescue Pro output.
sourceDir="/Volumes/Macintosh HD/Users/Michael/Documents/Recovery/Recovered Files/Scan 7/Reconstructed Files/Images"

lsOp="ls -lUT"
#          Mon Day Yr    Filename
cutLS="cut -c40-45,55-59,60-84"

tempDir=`pwd`

cd "$sourceDir"
#for dirLev1 in `ls`
#do
#cd $dirLev1
counter=0
for line in `$lsOp | $cutLS`
do
    # Format for loop:
    # May
    # 16
    # 2012
    # T5184x3456-01790.cr2
    case $counter in
        0)  month=`echo $line`
            # echo "Month: " $month
            ;;
        1)  day=`echo $line`
            # echo "Day: " $day
            ;;
        2)  year=`echo $line`
            # echo "Year: " $year
            ;;
        3)  file=`echo $line`
            dir="$destDir/$year/$month/$day/$file"
            echo "Dest Dir: "  $dir
            # echo "File: " $file
            mv $file "$dir"
            ;;
        *) echo "Error"
    esac
    counter=$(($counter+1))
    counter=$(($counter%4))
done
#cd ..
#done
cd "$tempDir"

