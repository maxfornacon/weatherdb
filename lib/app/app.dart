import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather/services/authentication_service.dart';
import 'package:weather/services/image_service.dart';
import 'package:weather/services/local_storage_service.dart';
import 'package:weather/services/post_service.dart';
import 'package:weather/services/user_service.dart';
import 'package:weather/ui/views/create_post/create_post_view.dart';
import 'package:weather/ui/views/home/home_view.dart';
import 'package:weather/ui/views/post/post_view.dart';
import 'package:weather/ui/views/search/search_view.dart';
import 'package:weather/ui/views/sign_in/sign_in_view.dart';
import 'package:weather/ui/views/sign_up/sign_up_view.dart';
import 'package:weather/ui/views/startup/startup_view.dart';
import 'package:weather/ui/views/users/user_profile_view.dart';

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: SignInView),
    

    MaterialRoute(page: CreatePostView),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: UserProfileView),
    MaterialRoute(page: PostView)
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: LocalStorageService),
    LazySingleton(classType: AuthenticationService),

    LazySingleton(classType: PostService),
    LazySingleton(classType: ImageService),
    LazySingleton(classType: UserService),
  ],
)
class AppSetup {}