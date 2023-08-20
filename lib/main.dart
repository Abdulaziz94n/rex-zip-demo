import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/requests/zipper_requests_params.dart';
import 'package:rex_zip/api/responses/zipper_data.dart';
import 'package:rex_zip/core/router/app_router.dart';
import 'package:rex_zip/core/theme/themes.dart';
import 'package:rex_zip/core/widgets/shared/app_error_widget.dart';
import 'package:rex_zip/core/widgets/shared/app_grid_item.dart';
import 'package:rex_zip/features/zipper_order/data/zipper_order_repository.dart';
import 'package:rex_zip/features/zipper_order/domain/sub_steps_enum.dart';
import 'package:rex_zip/features/zipper_order/domain/zipper_order.dart';

/// showcase of implmentations:
/// ThemeExtensions
/// work customApi
///
///

// TODO: Check Home Feature for edit and improve clean code

/// 1-  ZipperOrder.init() approach on classes like [ZipperOrder]
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
///
///
///
/// Extra Questions:
/// Data type or mechanism used on Serverside that can be consumed as a Stream in Flutter Apps ?

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
