import 'package:app/page/home/main.dart';
import 'package:app/page/album/main.dart';
import 'package:app/page/calendar/main.dart';
import 'package:app/ui/widget/main_screen.dart';
import 'package:auto_route/auto_route.dart';

export 'app_route.gr.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MainScreen,
      initial: true,
      children: <AutoRoute>[
        AutoRoute(
          path: 'home',
          page: PageHome,
        ),
        AutoRoute(
          path: 'album',
          page: PageAlbum,
        ),
        AutoRoute(
          path: 'calendar',
          page: PageCalendar,
        ),
      ]
    ),
])
class $AppRouter {}