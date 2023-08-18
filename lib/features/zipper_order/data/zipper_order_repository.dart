import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/constants/api_urls.dart';
import 'package:rex_zip/api/responses/zipper_data.dart';
import 'package:rex_zip/core/constants/dummy_data.dart';
import 'package:rex_zip/core/exceptions/app_exceptions.dart';
import 'package:rex_zip/core/utils/dio_utils.dart';
import 'package:rex_zip/features/zipper_order/domain/sub_steps_enum.dart';

class ZipperOrderRepository {
  ZipperOrderRepository(
    this._dio,
  );
  final Dio _dio;

  Future<Response> test() async {
    final dio = Dio();
    try {
      // final res = await dio.post(ApiUrls.baseUrl + ApiUrls.orderColors);
      final res =
          await dio.get('https://jsonplaceholder.typicode.com/todos/55');
      return res;
    } on DioException catch (e) {
      return DioUtils.handleResponseException(e);
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu tekrar deneyin');
    }
  }

  Future<List<ZipperKind>> fetchZipperKinds(Map<String, String> data) async {
    try {
      // final response = await _dio.post(ApiUrls.zipperKind, data: data);
      // final jsonList = (response.data as List<Map<String, dynamic>>);
      // final zipperKindData =
      //     jsonList.map((e) => ZipperKind.fromMap(e)).toList();
      // return zipperKindData;
      return DummyData.zipperKindsList;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperGroup>> fetchZipperGroups(Map<String, String> data) async {
    try {
      // final response = await _dio.post(ApiUrls.zipperGroup, data: data);
      // final jsonList = (response.data as List<Map<String, dynamic>>);
      // final zipperGroupData =
      //     jsonList.map((e) => ZipperGroup.fromMap(e)).toList();
      // return zipperGroupData;
      return DummyData.zipprGroupList;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperType>> fetchZipperTypes(Map<String, String> data) async {
    try {
      // final response = await _dio.post(ApiUrls.zipperGroup, data: data);
      // final jsonList = (response.data as List<Map<String, dynamic>>);
      // final zipperTypeData =
      //     jsonList.map((e) => ZipperType.fromMap(e)).toList();
      // return zipperTypeData;
      return DummyData.zipperTypesList;
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperData>> fetchStepData(
      SubSteps subStep, Map<String, String> parameters) async {
    return switch (subStep) {
      SubSteps.zipperKind => await fetchZipperKinds(parameters),
      SubSteps.zipperGroup => await fetchZipperGroups(parameters),
      SubSteps.zipperType => await fetchZipperTypes(parameters),
      SubSteps.zipperCode => await fetchZipperKinds(parameters),
      SubSteps.seperator => await fetchZipperKinds(parameters),
      SubSteps.bottomStopBox => await fetchZipperKinds(parameters),
      SubSteps.outterType => await fetchZipperKinds(parameters),
      SubSteps.outterColor => await fetchZipperKinds(parameters),
      SubSteps.outterLeftColor => await fetchZipperKinds(parameters),
      SubSteps.outterRightColor => await fetchZipperKinds(parameters),
      SubSteps.sewingThreadColor => await fetchZipperKinds(parameters),
      SubSteps.leftSewingThreadColor => await fetchZipperKinds(parameters),
      SubSteps.rightSewingThreadColor => await fetchZipperKinds(parameters),
      SubSteps.cursorType => await fetchZipperKinds(parameters),
      SubSteps.cursor => await fetchZipperKinds(parameters),
      SubSteps.cursorOverlayGroup => await fetchZipperKinds(parameters),
      SubSteps.cursorOverlayColor => await fetchZipperKinds(parameters),
      SubSteps.subCursorType => await fetchZipperKinds(parameters),
      SubSteps.subCursor => await fetchZipperKinds(parameters),
      SubSteps.subCursorOverlayGroup => await fetchZipperKinds(parameters),
      SubSteps.subCursorOverlayColor => await fetchZipperKinds(parameters),
      SubSteps.handgripGroup => await fetchZipperKinds(parameters),
      SubSteps.handgrips => await fetchZipperKinds(parameters),
      SubSteps.handgripOverlayGroup => await fetchZipperKinds(parameters),
      SubSteps.handgripOverlayColor => await fetchZipperKinds(parameters),
      SubSteps.mineSilmeColor => await fetchZipperKinds(parameters),
      SubSteps.subHandgripGroup => await fetchZipperKinds(parameters),
      SubSteps.subHandgrips => await fetchZipperKinds(parameters),
      SubSteps.subHandgripOverlayGroup => await fetchZipperKinds(parameters),
      SubSteps.subHandgripOverlayColor => await fetchZipperKinds(parameters),
      SubSteps.subMineSilmeColor => await fetchZipperKinds(parameters),
      SubSteps.topStop => await fetchZipperKinds(parameters),
      SubSteps.topBottomStopConfig => await fetchZipperKinds(parameters),
      SubSteps.colorLengthCount => await fetchZipperKinds(parameters),
      SubSteps.details => await fetchZipperKinds(parameters),
    };
  }

  Future<Response> fetchStepFakeData(SubSteps subStep) async {
    return switch (subStep) {
      SubSteps.zipperKind => await test(),
      SubSteps.zipperGroup => await test(),
      SubSteps.zipperType => await test(),
      SubSteps.zipperCode => await test(),
      SubSteps.seperator => await test(),
      SubSteps.bottomStopBox => await test(),
      SubSteps.outterType => await test(),
      SubSteps.outterColor => await test(),
      SubSteps.outterLeftColor => await test(),
      SubSteps.outterRightColor => await test(),
      SubSteps.sewingThreadColor => await test(),
      SubSteps.leftSewingThreadColor => await test(),
      SubSteps.rightSewingThreadColor => await test(),
      SubSteps.cursorType => await test(),
      SubSteps.cursor => await test(),
      SubSteps.cursorOverlayGroup => await test(),
      SubSteps.cursorOverlayColor => await test(),
      SubSteps.subCursorType => await test(),
      SubSteps.subCursor => await test(),
      SubSteps.subCursorOverlayGroup => await test(),
      SubSteps.subCursorOverlayColor => await test(),
      SubSteps.handgripGroup => await test(),
      SubSteps.handgrips => await test(),
      SubSteps.handgripOverlayGroup => await test(),
      SubSteps.handgripOverlayColor => await test(),
      SubSteps.mineSilmeColor => await test(),
      SubSteps.subHandgripGroup => await test(),
      SubSteps.subHandgrips => await test(),
      SubSteps.subHandgripOverlayGroup => await test(),
      SubSteps.subHandgripOverlayColor => await test(),
      SubSteps.subMineSilmeColor => await test(),
      SubSteps.topStop => await test(),
      SubSteps.topBottomStopConfig => await test(),
      SubSteps.colorLengthCount => await test(),
      SubSteps.details => await test(),
    };
  }
}

final zipperOrdersRepo = Provider<ZipperOrderRepository>((ref) {
  return ZipperOrderRepository(ref.watch(dioProvider));
});

final stepItemsFuture =
    FutureProvider.family<List<ZipperData>, SubSteps>((ref, subStep) async {
  final res = ref.watch(zipperOrdersRepo).fetchStepData(subStep, {});
  return res;
});
