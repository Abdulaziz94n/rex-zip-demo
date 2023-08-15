import 'package:hooks_riverpod/hooks_riverpod.dart';

enum AppTabs {
  newOrder('Yeni Sipariş'),
  openOrders('Açık Sipariş'),
  closedOrders('Kapalı Sipariş'),
  userSettings('Kullanıcı Ayarları'),
  contactUs('Geri Bildirim');

  const AppTabs(this.text);
  final String text;
}

final drawerTab = StateProvider<AppTabs>((ref) {
  return AppTabs.newOrder;
});
