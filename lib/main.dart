import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/requests/zipper_data_requests.dart';
import 'package:rex_zip/api/responses/zipper_data/zipper_data.dart';
import 'package:rex_zip/core/router/app_router.dart';
import 'package:rex_zip/core/theme/themes.dart';
import 'package:rex_zip/core/widgets/shared/app_error_widget.dart';
import 'package:rex_zip/core/widgets/shared/app_grid_item.dart';
import 'package:rex_zip/features/auth/data/auth_repository.dart';
import 'package:rex_zip/features/zipper_order/data/zipper_order_repository.dart';
import 'package:rex_zip/features/zipper_order/domain/sub_steps_enum.dart';

/// showcase of implmentations:
/// ThemeExtensions
/// work customApi
///
///

// TODO: Check Home Feature for edit and improve clean code

/// 1-  ZipperOrder.init() approach on classes like [ZipperModel]
/// 2- [ZipperData] sealed class "VERY long file solved with part - part of directives"
/// 3- [ZipperData] sealed class is good implementaton or you would prefer another one?
/// 4- [ZipperData] sealed class include Obejct mapping Functions is fine ? or use extension methods
/// 5- [AppGridItem] Implementation check
/// 6- [ZipperOrderRepository] methods to check
/// 6- [SubSteps] Mapping in [fetchStepData] inside the [ZipperOrderRepository]
/// 7- [API] Folder with the sub Response/Requests folders
/// 8- [ZipperApiRequests] File Check
/// 9- [RiverpodArchitectureRelated] "method names conflict between controller-Repo-Service classes which might
/// lead to calling the wrong function from other developers who are not aware of the architecture and layers contracts
/// 10- [Access Fetched data locally] recommended way to save async fetched data in a local variable
/// for easier access ?.
/// 11- recommended way for accessing user data, image etc... from ID value for example having CardItem related to a user
/// and the itemCard is bind to the user by its ID "itemOwner: userId" ? is it a must to fetch all users collection ? or query it to get the data
/// 12- Navigating back to a prev step reset the steps ahead ?
/// 13- Define Generic AppUser, return the correct type onLogin [AuthRepository] and type-cast it inside the app
/// 14- static functions variables affects app starting time ? example [ZipperApiRequests]
/// Extra Questions:
/// - Data type or mechanism used on Serverside that can be consumed as a Stream in Flutter Apps ?
/// - is there is anyway to autocomplete switch expression cases for an enum or sealed class ?
/// - extension methods on our models ?
/// -
/// - my generic firebase CRUD implementation
/// - Moving from Riverpod to another state management solution would it be easy [MySlackDiscussion] ?
/// - Not using State Management but Using Flutter's Built-in [ChangeNotifier], [ListenableBuilder], [ValueNotifier],[ValueListenableBuilder],
///  [InheritedWidget], [FutureBuilder] ,[StreamBuilder] etc...
/// - Your advice about going full stack dart for back-end server-side dev, any critic limitations for the time being?
/// - Stop learning OOP , Traits are the Future

const mainBackgroundPath = 'assets/images/background1.jpg';

void main() {
  // TODO: show customized error widget for release build
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return AppCrashWidget(errorText: details.exception.toString());
  };

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(goRouterProvider),
      debugShowCheckedModeBanner: false,
      title: 'Rex-ZIP',
      theme: AppThemes().lightTheme,
    );
  }
}
