import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/constants/api_urls.dart';
import 'package:rex_zip/api/responses/zipper_data.dart';
import 'package:rex_zip/core/constants/dummy_data.dart';
import 'package:rex_zip/core/exceptions/app_exceptions.dart';
import 'package:rex_zip/core/utils/dio_utils.dart';
import 'package:rex_zip/features/zipper_order/domain/sub_steps_enum.dart';
import 'package:rex_zip/features/zipper_order/presentation/new_order/new_order_controller.dart';

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

  Future<List<ZipperCode>> fetchZipperCodes(Map<String, String> data) async {
    try {
      // final response = await _dio.post(ApiUrls.zipperGroup, data: data);
      // final jsonList = (response.data as List<Map<String, dynamic>>);
      // final zipperTypeData =
      //     jsonList.map((e) => ZipperType.fromMap(e)).toList();
      // return zipperTypeData;
      return DummyData.zipperCodesList;
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
      SubSteps.zipperCode => await fetchZipperCodes(parameters),
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
}

final zipperOrdersRepo = Provider<ZipperOrderRepository>((ref) {
  return ZipperOrderRepository(ref.watch(dioProvider));
});

final stepItemsFuture =
    FutureProvider.family<List<ZipperData>, SubSteps>((ref, subStep) async {
  final order = ref.watch(zipperOrderController);
  final res = ref.watch(zipperOrdersRepo).fetchStepData(subStep, {});
  return res;
});
