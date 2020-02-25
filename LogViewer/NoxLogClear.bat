
:: Unity로 빌드한 APK를 녹스에서 실행했을 경우 녹스의 로그를 클리어하는 배치 프로그램입니다.

:: 녹스의 설치 경로
:: Example) C:\Program Files\Nox\bin
set Platform_Tools_Path=D:\Program Files\Nox\bin


:: D드라이브인 경우 ::D: 중에 ::를 지워야 합니다.
D:

cd %Platform_Tools_Path%
nox_adb logcat -c