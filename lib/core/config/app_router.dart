import 'package:go_router/go_router.dart';
import 'package:whatsapp_clone/features/auth/view/login_view.dart';
import 'package:whatsapp_clone/features/landpage/view/landpage_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const LandpageView()),
      GoRoute(
        path: LoginView.routeName,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
