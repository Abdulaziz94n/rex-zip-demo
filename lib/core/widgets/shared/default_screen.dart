import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/features/auth/application/auth_service.dart';

class DefaultScreen extends ConsumerWidget {
  const DefaultScreen({super.key, this.title, this.onPressed});
  final String? title;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(builder: (context, con) {
      return Scaffold(
        appBar: AppBar(
          title: Text(title ?? 'Default Screen'),
          actions: [
            IconButton(onPressed: onPressed, icon: const Icon(Icons.abc))
          ],
        ),
        body: Column(
          children: [
            Center(
              child: Text(title ?? 'Default Screen'),
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(authService).logout();
                },
                child: const Text('logout')),
          ],
        ),
      );
    });
  }
}
