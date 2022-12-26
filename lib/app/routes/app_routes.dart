part of "app_pages.dart";

abstract class Routes {
  Routes._();

  //Home
  static const home = _Paths.home;

  //Details
  static const details = _Paths.details;
}

abstract class _Paths {
  _Paths._();

  static const home = '/home';
  static const details = '/details';
}
