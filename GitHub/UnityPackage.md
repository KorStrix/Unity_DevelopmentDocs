# 1. 설치 방법

## 주의) 유니티 에디터로 작업하시지 마시고 파일 탐색기를 통해 작업하시기 바랍니다.

## 1-1. UnityProject/Packages/manifest.json 파일 수정

manifest.json파일을 찾으신 뒤
원하시는 라인에 하단의 라인을 추가합니다. 
```
,"com.korstrix.jenkinsbuilder":"https://github.com/KorStrix/Unity_JenkinsBuilder.git"
```
","를 포함하는 이유는 json 형식이라 형식을 맞춰야 하기 때문입니다.
Unity에서 packages를 인식 후 알아서 형식이 변경됩니다.


## 1-2. github 프로젝트를 다운받은 후 Unity Project에 통째로 탑재

1. github에서 이 프로젝트를 다운받습니다.
2. 설치할 유니티 프로젝트 폴더에 Pacakages 폴더 안에 이 프로젝트 폴더를 넣습니다.
3. 유니티 에디터를 새로고침 합니다.
