import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather/services/authentication_service.dart';
import 'package:weather/services/grocery_service.dart';
import 'package:weather/services/local_storage_service.dart';
import 'package:weather/services/post_service.dart';
import 'package:weather/services/product_service.dart';
import 'package:weather/ui/views/create_grocery/create_grocery_view.dart';
import 'package:weather/ui/views/create_product/create_product_view.dart';
import 'package:weather/ui/views/grocery_detail/grocery_detail_view.dart';
import 'package:weather/ui/views/home/home_view.dart';
import 'package:weather/ui/views/product_selection/product_selection_view.dart';
import 'package:weather/ui/views/sign_in/sign_in_view.dart';
import 'package:weather/ui/views/sign_up/sign_up_view.dart';
import 'package:weather/ui/views/startup/startup_view.dart';

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: SignInView),
    CupertinoRoute(page: CreateGroceryView),
    CupertinoRoute(page: CreateProductView),
    CupertinoRoute(page: GroceryDetailView),
    CupertinoRoute(page: ProductSelectionView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: LocalStorageService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: GroceryService),
    LazySingleton(classType: ProductService),

    LazySingleton(classType: PostService),
  ],
)
class AppSetup {}