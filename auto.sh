adb shell input keyevent 26
adb shell input keyevent 82
adb shell am start -n com.ss.android.ugc.aweme.lite/com.ss.android.ugc.aweme.main.MainActivity
sleep 3
COUNT=1
while [ $COUNT -lt 999 ]
do
adb shell input touchscreen swipe 400 800 400 400
echo "自动翻页,当前次数$COUNT"
((COUNT++))
sleep 10
done