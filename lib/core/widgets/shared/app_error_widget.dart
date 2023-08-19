import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rex_zip/core/router/app_router.dart';

import '../../extensions/build_context_extension.dart';
import 'app_text.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key, this.errorText});
  final String? errorText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppText(
          text: errorText ?? 'Something Went Wrong',
          style: context.appTextTheme.titleSmall!),
    );
  }
}

class AppCrashWidget extends StatelessWidget {
  const AppCrashWidget({super.key, this.errorText});
  final String? errorText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppText(
              text: errorText ??
                  'Something Went Wrong Please report the issue and we will fix it soon',
              style: context.appTextTheme.titleSmall!),
          ElevatedButton(
            onPressed: () => context.goNamed(AppRoutes.home.name),
            child: const AppText(text: 'Go To Home Screen'),
          )
        ],
      ),
    );
  }
}
