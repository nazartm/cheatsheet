ffmpeg
======

## Grab screen in high quality without compression (large file size)

    $ ffmpeg -f x11grab -video_size 1920x900 -framerate 24 -i :0.0 -qscale 0 -vcodec huffyuv output.mov

Compress the video output
    
    $ ffmpeg -i output.mov -vcodec libx265 -crf 28 output.mp4
    
In one step, but lower quality:
    
    $ ffmpeg -f x11grab -video_size 1920x900 -framerate 24 -i :0.0 -qscale 0 -vcodec libx265 -preset ultrafast -pix_fmt yuv444p output.mov
