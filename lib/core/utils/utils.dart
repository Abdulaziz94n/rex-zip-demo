import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/exceptions/app_exceptions.dart';
import 'package:rex_zip/core/widgets/shared/app_error_alert.dart';
import 'package:rex_zip/core/widgets/shared/app_loading_indicator.dart';
import 'package:rex_zip/core/widgets/shared/app_success_alert.dart';

class Utils {
  static void handleAsyncVal({
    required BuildContext context,
    required AsyncValue? previous,
    required AsyncValue next,
  }) {
    String errorMessage(Object? error) {
      if (error is AppException) {
        return error.message;
      } else {
        return error.toString();
      }
    }

    if (next.isLoading) {
      showDialog(
        context: context,
        builder: (context) => const AppLoadingIndicator(),
      );
    }
    if (previous!.isLoading && (!next.isLoading)) {
      print('POPPED');
      context.pop();
    }
    if (!next.isLoading && next.hasError) {
      final message = errorMessage(next.error);
      showDialog(
        context: context,
        builder: (context) => AppErrorAlert(
          contentText: 'Error Message here $message',
        ),
      );
    }
    if (next.hasValue && !next.isLoading && !next.hasError) {
      showDialog(
        context: context,
        builder: (context) => AppSuccessAlert(
          contentText: 'Error Message here',
          pop: context.pop,
        ),
      );
    }
  }
}
