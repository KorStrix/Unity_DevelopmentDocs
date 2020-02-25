# LogViewer

�� ������ Unity�� ������ ������ ��ǻ�Ϳ��� ��� Ȯ���� �� �ִ����� ���� �����Դϴ�.

## 1. Unity APK�� �ȵ���̵� ������ ������ ��

1. ��ǻ�Ϳ� ���� ���� ���̺�� �����մϴ�.
2. �̶� ���� ������ - USB ����� ���°� ON�̿��� �ϰ�, ��� ���¸� ����� Ǯ���� �մϴ�.
3. ��ǻ�Ϳ��� CMDâ�� ���� �ϴܰ� ���� �Է��մϴ�.

```

cd (Android SDK platform tool/adb.exe ���)
adb logcat -s Unity DEBUG -v color

```

### ��ġ����
������ cmd���� �Է��ϱ� �������Ƿ� ��ġ������ ����� �δ°��� ���մϴ�.

1. ���ϴ� ��ο� �޸����� �����մϴ�.
2. �ؿ� ������ �޸��忡 �ٿ��ֽ��ϴ�.
3. ���� �߿� adb.exe�� �ִ� Android SDK�� ��ġ���ִ� ��θ� �����մϴ�.
4. �����ϸ鼭 ���� Ȯ���ڸ� .bat�� �����մϴ�.

- ��ġ������ ����ȭ�鿡 ����ϴ� ���
https://oysu.tistory.com/26

```

:: Unity�� ������ APK�� �α׸� Ŭ�����ϴ� ��ġ ���α׷��Դϴ�.
:: ���̺�� ��ǻ�Ϳ� ���� ����Ǿ�� �մϴ�.

:: Android SDK - Platform Tools Path
:: Example) C:\Users\user\AppData\Local\Android\Sdk\platform-tools
set Platform_Tools_Path=C:\Users\user\AppData\Local\Android\Sdk\platform-tools

:: D����̺��� ��� ::D: �߿� ::�� ������ �մϴ�.
::D:

cd %Platform_Tools_Path%
adb logcat -c
```