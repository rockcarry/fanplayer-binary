@rem livedesk 使用说明
@rem 支持的参数：
@rem --aac            使用 aac 音频编码，不指定 -aac 将采用 pcm alaw 编码
@rem --channels=N     指定音频通道数
@rem --samplerate=xxx 指定音频采样率
@rem --abitrate=xxx   指定音频编码码率
@rem --vwidth=xxx     指定视频宽度
@rem --vheight=xxx    指定视频高度
@rem --framerate=xx   指定视频帧率
@rem --vbitrate=xxx   指定视频编码码率
@rem --rtsp=xxxx      使用 rtsp 服务器直播
@rem --avkcps=xxxx    使用 avkcps 服务器直播，xxxx 为端口号
@rem --ffrdps=xxxx    使用 ffrdps 服务器直播，xxxx 为端口号
@rem --rtmp=url       使用 rtmp 推流直播
@rem --mp4=filename   屏幕录制保存到 .mp4 文件
@rem --duration=xxx   指定录像分段时长 ms 为单位
@rem
@rem 程序运行后支持的命令：
@rem - help: show this mesage.
@rem - quit: quit this program.
@rem - mp4_start: start recording screen to mp4 files.
@rem - mp4_pause: pause recording screen to mp4 files.

LiveDesk --aac --channels=1 --samplerate=44100 --abitrate=64000 --vbitrate=1500000 --vwidth=1280 --vheight=720 --ffrdps=8001

