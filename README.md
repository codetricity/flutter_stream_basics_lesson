# Flutter Basic Stream Lesson

![screenshot](docs/images/screenshot.gif)

## Observer Pattern Overview

The [Observer pattern](https://en.wikipedia.org/wiki/Observer_pattern) uses 
a class called a __Subject__ to track parts of your program to update
when a change occurs.  The parts that are listening to the Subject are
called __Observers__.  

In Dart, we'll implement the Observer pattern with streams.  To use a Stream in 
Dart, you will need to build three components:

1. _Sink_: Add data to the stream. In Dart, StreamController is the main sink.
2. _Stream_: Notifies listeners of new events. In this example, the stream is a property 
StreamController.
3. _Subscriber_ is an external object that is waiting to be notified. It listens to the stream.

## Sink and Stream

StreamController is used to set up and add information to a
stream.  We will add a color such as red to the stream.  When
the color is added, the box will change to the new color with StreamBuilder.  

```dart
StreamController controller = StreamController();
```

In the example above, a new `StreamController` is instantiated
as `controller`.  You can now use the controller to provider the
stream and add new information to the stream. 

### Stream

* `controller.stream` to get the stream. You 
will need the stream for the subscriber provided by StreamBuilder.

## Sink - Add

* `controller.add` will add a color to the stream

If you put the code below inside the `onPressed` callback for a button,
it will add the color red to the data stream and notify
subscribers.

```dart
controller.add(Colors.red);
```

## Subscriber

StreamBuilder automatically attaches a listener to the Subscriber.
In the example below, the `Text` widget is subscribed to
the stream.  When the controller adds a new piece of information
to the stream, `snapshot.data` will be updated and the widget will
rebuild.

```dart
child: Column(
  children: [
    StreamBuilder(
      stream: stream,
      builder: (BuildContext context, snapshot) {
        return Text(snapshot.data);
```

## Exercise

Create two files:

1. `main.dart` - contains a StatefulWidget
2. `main_screen.dart` - contains a StatelessWidget


### main.dart

In `main.dart`, call the StatefulWidget `MyApp`.  In `main()`, run the
StatefulWidget with `runApp(MyApp(),)`

Instantiate the StreamController as `controller` in the `State` class.

MyApp should return a `MaterialApp` that contains `home: Scaffold()`.  The `body`
of the `Scaffold` is the `MainScreen` class that you'll create in `main_screen.dart`.

Pass the controller to MainScreen.

## main_screen.dart

Create a StatelessWidget called MainScreen.

Set up the constructor to receive the controller.

Create the StreamBuilder inside a Column.

```dart
return Center(
  child: Column(
    children: [
      StreamBuilder(
        stream: stream,
        builder: (BuildContext context, snapshot) {
```

The top part of the Column is a StreamBuilder that returns a Container.

The bottom part of the Column is a row of buttons.
