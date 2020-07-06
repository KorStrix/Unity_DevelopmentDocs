
:: Unity로 빌드한 APK의 로그를 컴퓨터로 보는 배치 프로그램입니다.

:: Android SDK - Platform Tools Path
:: Example) C:\Users\user\AppData\Local\Android\Sdk\platform-tools
set Platform_Tools_Path=C:\Users\user\AppData\Local\Android\Sdk\platform-tools

cd %Platform_Tools_Path%
adb logcat -s Unity DEBUG -v color