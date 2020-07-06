# Visual Studio에 관련된 글입니다.

## 비주얼 스튜디오 - 솔루션 환경설정 .editorconfig

![](https://github.com/KorStrix/Unity_DevelopmentDocs/blob/master/VisualStudio/Images_ForGithub/%EC%83%88%ED%95%AD%EB%AA%A9.png?raw=true)

![](https://github.com/KorStrix/Unity_DevelopmentDocs/blob/master/VisualStudio/Images_ForGithub/%EC%83%88%ED%95%AD%EB%AA%A9%20%EC%B6%94%EA%B0%80%EC%9C%88%EB%8F%84%EC%9A%B0.png?raw=true)

비주얼 스튜디오의 설정 중 코드 작성에 관련된 설정(줄바꿈, 중괄호 {} 양식, 띄어쓰기, 네이밍 컨벤션 등)을

해당 솔루션에 override 할 수 있는 파일입니다.

예를 들어 비주얼 스튜디오의 기본 설정이 Csharp에서

```csharp
void SomeFunction()
{

}
```

인 경우 해당 솔루션에서만

```csharp
void SomeFunction() {

}
```

으로 처리할 수 있습니다.



### 인코딩

![](https://github.com/KorStrix/Unity_DevelopmentDocs/blob/master/VisualStudio/Images_ForGithub/EditorConfig.png?raw=true)

유니티에서 cs 파일의 인코딩은 기본적으로 UTF-8이나,

어째서인지 가끔 다른 인코딩으로 자동으로 저장하는 경우가 있습니다.

이럴 경우 .editorconfig를 통하여 해당 솔루션에서 저장하는 모든 .cs는 UTF-8로 저장할 수 있습니다.

(단, 새로 저장할 경우에 한하며 기존 파일들은 변경되지 않습니다.)


