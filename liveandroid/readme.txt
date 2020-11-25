LiveAndroid 是一个 android 屏幕直播程序


c/c++ 编写的可执行程序，实现了 ffrdp 协议的屏幕直播。不是 apk 需要在 adb shell 下运行命令
程序获取 mic 音频编码为 alaw，捕获屏幕编码为 h264 通过 ffrdp 进行网络传输
接收端可以直接用 fanplayer 进行播放

LiveAndroid 可以说是 LiveDesk 的 android 版本，但是目前仅仅实现 ffrdp 直播功能


使用方法：
adb remount
adb push liveandroid /system/bin
adb shell chmod +x /system/bin/liveandroid
adb shell liveandroid &
机器连接 wifi
adb shell ifconfig 查看 ip 地址（假如为 192.168.1.123）
使用 fanplayer 播放：
fanplayer ffrdp://192.168.1.123:8000


更多的命令行参数：
--port=          指定 ffrdp 端口，默认值为 8000
--audio_source=  指定音频源，0 为 android 设备的 mic，1 为 android 系统声音
--video_width=   指定视频宽度，默认值为 1280
--video_height=  指定视频高度，默认值为 720
--video_frate=   指定视频帧率，默认值为 15
--video_bitrate= 指定视频码率，默认值为 1000000


传参示例：
liveandroid --port=8888 --audio_source=1 --video_width=800 --video_height=480 --video_frate=30 --video_bitrate=500000


rockcarry
2020-12-24

