// ignore_for_file: unused_import

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/constants/api_urls.dart';
import 'package:rex_zip/core/constants/dummy_data.dart';
import 'package:rex_zip/core/widgets/reusables/app_scaffold.dart';
import 'package:rex_zip/core/widgets/shared/main_background_image.dart';
import 'package:rex_zip/features/auth/presentation/login_screen/widgets/login_form.dart';
import 'package:rex_zip/features/zipper_order/data/zipper_orders_repository.dart';

class LoginScreenMobile extends ConsumerWidget {
  const LoginScreenMobile({
    super.key,
    this.textFieldwidth,
  });
  final double? textFieldwidth;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainBackgroundImage(
      child: AppScaffold(
        backgroundColor: Colors.transparent,
        body: const SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              LoginForm(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            ref.read(zipperOrdersRepo).fetchClosedOrders(
                  token:
                      'eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2OTMwNjMwMjB9.kYTQ2C19-MDh8r7MEOFXla4lY_lyzX0ko-uTcrL6LOE',
                  clientCode: ApiConstants.clientUserName,
                  orderNo: 140435,
                );
          },
        ),
      ),
    );
  }
}
