# implement_simple_delegate

A new Flutter project.

## How to

Event source, in my example is Alarm()

```dart
  class Alarm {
    AlarmDelegate delegate;
    Alarm() {
        //...
    }
  }
```

Delegate's abstract method, here is mixin class.

```dart
  mixin AlarmDelegate {
    void onUpdateTimes(int newSeconds);
    void onTimesUp();
  }
```

In your State<> class implement AlarmDelegate (with AlarmDelegate). as follows.

```dart
  class _MyHomePageState extends State<MyHomePage> with AlarmDelegate {
    Alarm mAlarm;

    @override
    void initState() {
        // TODO: implement initState
        super.initState();

        this.mAlarm = Alarm();
        this.mAlarm.delegate = this;
    }
  }

//When event comes, abstract method will call.
  @override
  void onUpdateTimes(int newSeconds) {
    // TODO: implement onUpdateTimes
  }

  @override
  void onTimesUp() {
    // TODO: implement onTimesUp
  }
```

## Demo

![](https://github.com/der1598c/Flutter_Exploration/blob/master/implement_simple_delegate/demo.gif)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
