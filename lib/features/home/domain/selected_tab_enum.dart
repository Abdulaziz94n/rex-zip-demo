import 'package:hooks_riverpod/hooks_riverpod.dart';

enum AppTabs {
  newOrder,
  myOrders,
  userSettings,
  contactUs,
}

final stateProvider = StateProvider<AppTabs>((ref) {
  return AppTabs.newOrder;
});
