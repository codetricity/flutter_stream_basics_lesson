# Flutter Basic Stream Lesson

![screenshot](docs/images/screenshot.gif)


The Dart stream is based on an Observer pattern.  The pattern consists of three pieces:

* _Sinks_ This is how data is added. StreamController is the main sink.
* _Streams_ are properties on the Sink. When the sink needs to notify listeners of new events, it does so via streams.
* _Subscribers_ are the external classes or objects that are waiting to be notified. This is done by listening to streams.


StreamController is used to set up and add information to a
stream.  We will add a color such as red to the stream.  When
the color is added, the box will change to the new color with StreamBuilder.  



## Control

```dart
var controller = StreamController();
```

## Stream

* `controller.stream` to get the stream needed for StreamBuilder

## Add

* `controller.add` to add a color to the stream

A button controls adding the color to the data stream.

```dart
controller.add(Colors.red);
```

## Build

The StreamBuilder is set up like this:

```dart
child: Column(
  children: [
    StreamBuilder(
      stream: stream,
      builder: (BuildContext context, snapshot) {
        return Text(snapshot.data);
```


Create two files:

1. main.dart
2. main_screen.dart


Pass the controller to main_screen.dart.

Set up the constructor to receive the controller.





