part of 'route_import_path.dart';
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RouteName.onboardingScreen1:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen1());

      default:
        return MaterialPageRoute(
          builder: (_) =>
          const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}