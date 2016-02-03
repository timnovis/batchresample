# This is to iterate over a whole directory of images, convert them to JPG and resample to 72dpi.

for fn in *; do
    if [ -d $fn ]; then
        echo "$fn is a directory"
    fi
    if [ -f $fn ]; then
        convert -units PixelsPerInch $fn -resample 72 $fn.jpg
    fi
done

# This is to convert and resample an individual file

# convert -units PixelsPerInch input.png -resample 72 output.jpg