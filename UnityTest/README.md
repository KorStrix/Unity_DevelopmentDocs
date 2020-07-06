# Test

근래들어 소프트웨어 업계에서 테스트는 반드시 해야하는 쪽으로 바뀌는 추세이나,

유독 게임업계에서는 잘 지켜지지 않습니다.

그도 그럴 것이 게임은 기획에 따라 컨텐츠가 항상 수시로 바뀔 수 있어서,

컨텐츠 코드 뿐만 아니라 테스트 코드도 다시 짜야 하는 경우도 많기 때문입니다.

```
저같은 경우는

컨텐츠보다 라이브러리 레벨(상대적으로 변하지 않는 레벨)에서만 테스트 코드를 작성합니다.

코드에서 변하는 부분은 클라이언트(유저, 기획자 혹은 프로젝트 매니져 등)중심으로 작성되었기 때문이고,

변하지 않는 부분(프로그래밍에서의 자주 사용되는 패턴, 라이브러리 등)은 프로그래머 중심으로 작성되었기 때문이라 생각합니다.

컨텐츠 레벨까지 테스트 코드를 작성하는 경우를 보았으나, 소규모 개발의 사례(프로그래머가 곧 기획자)였기 때문에 가능한 사례라 생각되어집니다. 
```

이 문서에서는 유니티에서 어떻게 테스트 코드를 작성해야 효율적인지에 대해 적었습니다.


## 유니티에서 테스트를 어떻게 하는지

유니티에서는 Test Runner라는 툴을 이용해 테스트를 할 수 있습니다.

Test Runner는 Window - General - Test Runner를 통해 열 수 있습니다.

Test Runner는 PlayMode / EditMode가 있는데,

PlayMode는 유니티 플레이 환경에서 테스트,

EditMode는 유니티 에디터(플레이를 안한 채)환경에서 테스트할 수 있습니다.


Test Runner를 열었으면, Test Script를 작성해야 합니다.

Test Script는 ProjectView에서 우클릭 후 Create - Testing을 통해 생성할 수 있습니다.

여기서 주의사항은, 2018버전 이상부터 Test 스크립트는 반드시 Assembly Definition의 관리하에 있어야 하는 점입니다.

이 것을 피하려면, Test Runner에서 메뉴창(= 모양) - "Enable Play Mode Tests For All Assembly"를 통해

Assembly Definition의 관리를 피할 수 있습니다.



Test Script를 생성했다면, Test Runner를 통해 테스트를 할 수 있습니다.


## 테스트 양식은 어떻게 할지

테스트 코드를 작성하려면 Namespace, TestClass, TestFunction을 작성해야 합니다.

저같은 경우

Namespace는 기본적으로 해당 모듈의 이름을 적되, 테스트할 클래스가 테스트할 것이 많으면 중첩시켰고,

Class이름은 해당 클래스_Test 형식으로 작명하며,

함수 이름은 항상 이름으로 하되, 한글로 ~는 ~를하면 ~여야 한다(AAA). 라는 식으로 작성하며,

함수 내용은 AAA(Arrange, Action, Assert) 형식으로 작성합니다.

하단은 예시 양식입니다.

```csharp
public namespace Somthing_Module
{
	public class Somthing_Class_Test
	{
		[Test]
		public void 이클래스는_이것을실행하면_이것이여야만합니다()
		{
			// Arrange (데이터 정렬)
		
		
			// Action (기능 실행)
			
			
			// Assert (맞는지 체크)
			
			
		}
	}
}
```

하단은 예시 코드입니다.

```csharp
public namespace About_Character
{
	public class Character_HP_Test
	{
		[Test]
		public void 체력클래스는_데미지를입으면_이벤트를날립니다()
		{
			// Arrange (데이터 정렬)
			HP pHPClass = new HP(100);
		
			// Action (기능 실행)
			pHPClass.Damage(10);
			
			// Assert (맞는지 체크)
			Assert.IsTrue(pHPClass가 이벤트를 날렸는지);			
		}
	}
}
```