@echo off
rem Copy a video file and rotate it by 180 degrees.
rem Author: Terry Ebdon
rem Date:   07-MAR-2022
rem usage:  rotate blah.mov
rem e.g. 'rotate blah.mov' will create blah-rotated.mov

if EXIST %1 (
    ffmpeg -i "%1" -metadata:s:v rotate="-180" -codec copy "%~n1-rotated%~x1"
) else (
    @echo File does not exist
)
