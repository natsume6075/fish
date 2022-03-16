function adb_screencap --description 'take screencapture, save as $1.png or ss_YYYYmmdd-hhmmss.png'
    if [ (count $argv) = 0 ]
        set out_filename ss_(date +%Y%m%d-%H%M%S)
    else if [ (count $argv) = 1 ]
        set out_filename $argv[1]
    else
        echo "error: too many arguments"
        exit
    end

    adb shell screencap -p /sdcard/tmp.png
    and adb pull /sdcard/tmp.png $out_filename.png
    and adb shell rm /sdcard/tmp.png
    and echo save screen capture as $out_filename.png
end

