import 'package:auto_route/auto_route_annotations.dart';
import 'package:login_app/ui/views/account/login/login_view.dart';
import 'package:login_app/ui/views/account/registration/registration_view.dart';
import 'package:login_app/ui/views/home/home_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    // MaterialRoute(page: HomeView, guards: [AuthGuard]),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: RegistrationView),
  ],
)
class $Router {}