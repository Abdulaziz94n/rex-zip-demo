import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/constants/api_urls.dart';
import 'package:rex_zip/features/zipper_order/domain/sub_steps_enum.dart';

class ZipperOrderRepository {
  ZipperOrderRepository(
    this._dio,
  );
  final Dio _dio;

  Future<String> fetchStepData(SubSteps subStep) async {
    return switch (subStep) {
      SubSteps.zipperKind => subStep.name,
      SubSteps.zipperGroup => subStep.name,
      SubSteps.zipperType => subStep.name,
      SubSteps.zipperCode => subStep.name,
      SubSteps.seperator => subStep.name,
      SubSteps.bottomStopBox => subStep.name,
      SubSteps.outterType => subStep.name,
      SubSteps.outterColor => subStep.name,
      SubSteps.outterLeftColor => subStep.name,
      SubSteps.outterRightColor => subStep.name,
      SubSteps.sewingThreadColor => subStep.name,
      SubSteps.leftSewingThreadColor => subStep.name,
      SubSteps.rightSewingThreadColor => subStep.name,
      SubSteps.cursorType => subStep.name,
      SubSteps.cursor => subStep.name,
      SubSteps.cursorOverlayGroup => subStep.name,
      SubSteps.cursorOverlayColor => subStep.name,
      SubSteps.subCursorType => subStep.name,
      SubSteps.subCursor => subStep.name,
      SubSteps.subCursorOverlayGroup => subStep.name,
      SubSteps.subCursorOverlayColor => subStep.name,
      SubSteps.handgripGroup => subStep.name,
      SubSteps.handgrips => subStep.name,
      SubSteps.handgripOverlayGroup => subStep.name,
      SubSteps.handgripOverlayColor => subStep.name,
      SubSteps.mineSilmeColor => subStep.name,
      SubSteps.subHandgripGroup => subStep.name,
      SubSteps.subHandgrips => subStep.name,
      SubSteps.subHandgripOverlayGroup => subStep.name,
      SubSteps.subHandgripOverlayColor => subStep.name,
      SubSteps.subMineSilmeColor => subStep.name,
      SubSteps.topStop => subStep.name,
      SubSteps.topBottomStopConfig => subStep.name,
      SubSteps.colorLengthCount => subStep.name,
      SubSteps.details => subStep.name,
    };
  }
}

final zipperOrdersRepo = Provider<ZipperOrderRepository>((ref) {
  return ZipperOrderRepository(ref.watch(dioProvider));
});

final stepItemsFuture =
    FutureProvider.family<String, SubSteps>((ref, subStep) async {
  final res = ref.watch(zipperOrdersRepo).fetchStepData(subStep);
  return res;
});
