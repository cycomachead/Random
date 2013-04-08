# Script to move files into the proper folders based on modification date.
# dest dir
destDir="/Volumes/Macintosh HD/Users/Michael/Documents/Recovery/Photos"
# directory from Rescue Pro output.
sourceDir="/Volumes/Macintosh HD/Users/Michael/Documents/Recovery/Images/"


#####
# Exiftool for dates and file num
# create dirs only as needed if ![-d ...] ?
# use month names...



#######################
cd "$sourceDir"
for dir in *
do
    # Format for loop:
    # 2012-05-20 19-20.jpg
    year=`echo $line | cut -c1-4`
    month=`echo $line | cut -c6-7`
    day=`echo $line | cut -c9-10`
    case $month in
        01) month="Jan"
            ;;
        02) month="Feb"
            ;;
        03) month="Mar"
            ;;
        04) month="Apr"
            ;;
        05) month="May"
            ;;
        06) month="Jun"
            ;;
        07) month="Jul"
            ;;
        08) month="Aug"
            ;;
        09) month="Sep"
            ;;
        10) month="Oct"
            ;;
        11) month="Nov"
            ;;
        12) month="Dec"
            ;;
        *) echo "Error"
    esac
    case $day in
        01) day="1"
            ;;
        02) day="2"
            ;;
        03) day="3"
            ;;
        04) day="4"
            ;;
        05) day="5"
            ;;
        06) day="6"
            ;;
        07) day="7"
            ;;
        08) day="8"
            ;;
        09) day="9"
            ;;
        *) ;;
    esac
    file=`echo $line`
    dir="$destDir/$year/$month/$day/$file"
    echo "Dest Dir: "  $dir
    # echo "File: " $file
    mv "$file" "$dir"
done

