## TO ADD A TRANSPARENT GRAY BAR TO TOP OF EVERY JPG IMAGE

for i in *.png; do 
magick \
$i \
\( +clone -alpha extract -fill "gray(25%)" \
-draw "rectangle 0,0 %[fx:w-1],%[fx:h*0.25]" \
\) \
-alpha off -compose CopyOpacity -composite \
$i.png;
done
