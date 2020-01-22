# Template

## Template?

템플릿은 이미 짜여진 형식을 얘기하며, CPP에 있는 문법과 같은 이름이지만 다릅니다.

여기서 얘기하는 템플릿은 IDE에서 지원하는 이미 미리 작성된 코드뭉치를 이야기합니다.

유니티에서 Create - C# Script를 통해 코드를 생성하면 다음과 같은 내용이 미리 작성된 파일이 생성됩니다.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewBehaviourScript : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}

```

## Visual Studio에서 Template을 추가/제거하는 법 - (=ItemTeplate)


### 추가
Visual Studio 2017버전의 경로는
C:\Users\user\Documents\Visual Studio 2017\Templates\ItemTemplates

Visual Studio 2019버전의 경로는
C:\Users\user\Documents\Visual Studio 2019\Templates\ItemTemplates

여기이며, Visual Studio에서 지정한 형식대로 파일을 저장한 뒤,
Visual Studio를 재부팅하면 적용됩니다.


### 수정 및 제거
추가하는 법보다 한번 추가한 Template을 수정하거나 제거하는 법은 조금 까다롭습니다.

이 부분은 항상 업데이트 될 예정이 있을 수 있기 때문에 Stack Overflow 링크를 남깁니다

How can I delete bad Visual Studio templates?
https://stackoverflow.com/questions/789095/how-can-i-delete-bad-visual-studio-templates

 
### Visual Studio 문서(메뉴얼)

방법:항목 템플릿 만들기
https://docs.microsoft.com/ko-kr/visualstudio/ide/how-to-create-item-templates?view=vs-2019


## Unity Template을 변경하는 법 - 1. 파일 변경


유니티의 템플릿 파일은 다음 경로에 저장되있습니다.
Windows: C:\Program Files\Unity\Editor\Data\Resources\ScriptTemplates
Mac: /Applications/Unity/Editor/Data/Resources/ScriptTemplates
Mac (since 5.2.1f1): /Applications/Unity/Unity.app/Contents/Resources/ScriptTemplates

여기서 해당하는 파일을 수정하면 끝입니다.
이 방법의 경우 해당하는 컴퓨터만 적용됩니다.


## Unity Template을 변경하는 법 - 2. 프로젝트 내 로컬로 저장

프로젝트 내 스크립트 템플릿 폴더를 생성하여 네이밍을 같게 하면
같은 팀원들도 쉽게 적용할 수있습니다.
https://twitter.com/UnityBerserkers/status/1105555535070416896

### 참고 링크

How To Customize Unity Script Templates
https://support.unity3d.com/hc/en-us/articles/210223733-How-to-customize-Unity-script-templates