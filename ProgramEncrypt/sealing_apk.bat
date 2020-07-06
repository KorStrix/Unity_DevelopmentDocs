:: zipalign & apksigner Auto 배치파일

:: 설치방법
:: 1. 안드로이드 SDK 플러그인 폴더에 이 배치파일과 Keystore 파일을 같은 경로에 배치하기
:: 2. 배치파일 하위 폴더로 Before, After 폴더 생성하기

:: 3. Java JDK Path(\bin까지) 입력
set JAVA_PATH=C:\Program Files\Java\jdk1.8.0_231\bin


:: 사용방법
:: 1. APK 파일을 Before 폴더에 두기
:: 2. 하단에 APK_NAME에 APK 파일명 입력 후 실행 
:: 3. After에 있는 폴더에서 파일 확인

set APK_NAME=
set KEYSTORENAME=
set KEYALIAS=

:: 실행코드 시작
cd %cd%
set FULLNAME=%APK_NAME%.apk
set SEALED_NAME=%APK_NAME%_sealed.apk

zipalign -v 4 Before\%FULLNAME% After\%SEALED_NAME%

apksigner sign --ks %KEYSTORENAME% --ks-key-alias %KEYALIAS% After\%SEALED_NAME%

pause
pause

:: Singer 확인
::set FULL_SEALED_PATH=%cd%\After\%SEALED_NAME%

::apksigner -verify -verbose %FULL_SEALED_PATH%
::echo FULL_SEALED_PATH
::pause

::cd %JAVA_PATH%
::jarsigner -verify -verbose -certs %FULL_SEALED_PATH%

::pause
::pause                                                              