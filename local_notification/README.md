# local_notification

A new Flutter project.

## How to

Add dependencies: flutter_local_notifications: ^1.4.1
  
Import flutter_local_notifications package

```dart
  import 'package:flutter_local_notifications/flutter_local_notifications.dart';
```

Initialize notification

```dart
  WidgetsFlutterBinding.ensureInitialized();

  var initAndroidSetting = AndroidInitializationSettings('@mipmap/ic_launcher');
  var initIosSetting = IOSInitializationSettings();
  var initSetting = InitializationSettings(initAndroidSetting, initIosSetting);
  await FlutterLocalNotificationsPlugin().initialize(initSetting);
```

Add a function for easy calling

```dart
  Future<void> showNotification(int counter) async {
    var android = AndroidNotificationDetails(
        'channelId', 'channelName', 'channelDescription');
    var iOS = IOSNotificationDetails();
    var platform = NotificationDetails(android, iOS);

    await FlutterLocalNotificationsPlugin().show(0, 'Counter', counter.toString(), platform);
  }
```

![](https://github.com/der1598c/Flutter_Exploration/blob/master/local_notification/demo.gif)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
