

import 'dart:async';

mixin AlarmDelegate {
  void onUpdateTimes(int newSeconds);
  void onTimesUp();
}

class Alarm {
  
  AlarmDelegate delegate;

  Timer _timer;
  int _seconds;

  Alarm() {
    this._seconds = 0;
  }

  void startTimer(int seconds) {
    // this._seconds = seconds;
    print("startTimer, _seconds=${this._seconds = seconds}");
    disposeTimer();
    const oneSec = const Duration(seconds: 1);
    if(this._seconds != 0) {
      this._timer = new Timer.periodic(
        oneSec,
        (Timer timer) => timerEvent(),
      );
    }
  }

  void timerEvent() {
    if (this._seconds < 1) {
      disposeTimer();
      delegate.onTimesUp();
    } else {
      this._seconds = this._seconds - 1;
      print("timerEvent, _seconds=$_seconds");
      delegate.onUpdateTimes(_seconds);
    }
  }

  void disposeTimer() {
    if (null != this._timer) {
      this._timer.cancel();
      this._timer = null;
    }
  }
  
}