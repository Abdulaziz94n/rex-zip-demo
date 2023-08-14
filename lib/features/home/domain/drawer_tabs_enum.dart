import 'package:hooks_riverpod/hooks_riverpod.dart';

enum DrawerTabs {
  newOrder('Yeni Sipariş'),
  openOrders('Açık Sipariş'),
  closedOrders('Kapalı Sipariş'),
  userSettings('Kullanıcı Ayarları'),
  contactUs('Geri Bildirim');

  const DrawerTabs(this.text);
  final String text;
}

final drawerTab = StateProvider<DrawerTabs>((ref) {
  return DrawerTabs.newOrder;
});
