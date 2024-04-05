import 'dart:async';
enum NavigationType {
  push,
  pushReplacement,
  pop,
  popUntil
  // Add more navigation types as needed
}
abstract class INavigation{
 String? appRoute;
  Object? data;
  NavigationType? navigationType;
}

class Navigation extends INavigation{
final String? appRoute;
 final Object? data;
 final NavigationType? navigationType;
 Navigation({this.data,this.navigationType,this.appRoute});
}

mixin NavigationMixin {
  final StreamController<INavigation> _navigationController = StreamController<INavigation>.broadcast();
  Stream<INavigation> get navigationStream => _navigationController.stream;
  Sink<INavigation> get navigationSink => _navigationController.sink;

  void dispose() {
    _navigationController.close();
  }
}
