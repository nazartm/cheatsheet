ffmpeg
======

## Grab screen in high quality without compression (large file size)

    $ ffmpeg -f x11grab -video_size 1920x900 -framerate 24 -i :0.0 -qscale 0 -vcodec huffyuv output.mov

Compress the video output
    
    $ ffmpeg -i output.mov -vcodec libx265 -crf 28 output.mp4
    
In one step, but lower quality:
    
    $ ffmpeg -f x11grab -video_size 1920x900 -framerate 24 -i :0.0 -qscale 0 -vcodec libx265 -preset ultrafast -pix_fmt yuv444p output.mov

## Create video from a set of images

Images are named frame01.jpg..frame99.jpg. Each image is a single frame. 

    $ ffmpeg -video_size 1920x1080 -framerate 24 -i frame%02d.jpg -crf 25 -vcodec libx265 -pix_fmt yuv422p output.mov
