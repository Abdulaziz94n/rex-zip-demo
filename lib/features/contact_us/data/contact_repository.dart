import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContactUsRepository {}

final contactUsRepo = Provider<ContactUsRepository>((ref) {
  return ContactUsRepository();
});
