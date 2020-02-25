# LogViewer

이 문서는 Unity로 빌드한 파일을 컴퓨터에서 어떻게 확인할 수 있는지에 대한 문서입니다.

## 1. Unity APK를 안드로이드 폰에서 실행할 때

1. 컴퓨터와 폰을 유선 케이블로 연결합니다.
2. 이때 폰은 개발자 - USB 디버깅 상태가 ON이여야 하고, 잠김 상태면 잠김이 풀려야 합니다.
3. 컴퓨터에서 CMD창을 통해 하단과 같이 입력합니다.

```

cd (Android SDK platform tool/adb.exe 경로)
adb logcat -s Unity DEBUG -v color

```

### 배치파일
일일이 cmd에서 입력하기 귀찮으므로 배치파일을 만들어 두는것이 편합니다.

1. 원하는 경로에 메모장을 생성합니다.
2. 밑에 내용을 메모장에 붙여넣습니다.
3. 내용 중에 adb.exe가 있는 Android SDK가 설치되있는 경로를 세팅합니다.
4. 저장하면서 파일 확장자를 .bat로 변경합니다.

- 배치파일을 시작화면에 등록하는 방법
https://oysu.tistory.com/26

```

:: Unity로 빌드한 APK의 로그를 클리어하는 배치 프로그램입니다.
:: 케이블로 컴퓨터와 폰이 연결되어야 합니다.

:: Android SDK - Platform Tools Path
:: Example) C:\Users\user\AppData\Local\Android\Sdk\platform-tools
set Platform_Tools_Path=C:\Users\user\AppData\Local\Android\Sdk\platform-tools

:: D드라이브인 경우 ::D: 중에 ::를 지워야 합니다.
::D:

cd %Platform_Tools_Path%
adb logcat -c
```