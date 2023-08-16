import 'package:equatable/equatable.dart';
import 'package:rex_zip/core/utils/assets_manager.dart';
import 'package:rex_zip/features/zipper_orders/domain/step_model.dart';
import 'package:rex_zip/features/zipper_orders/domain/sub_step_model.dart';
import 'package:rex_zip/features/zipper_orders/domain/sub_steps_enum.dart';

class AppStepper extends Equatable {
  final List<MainStep> mainSteps;
  final int mainIndex;
  final int subIndex;

  const AppStepper({
    this.mainIndex = 0,
    this.subIndex = 0,
    this.mainSteps = _initStepper,
  });

  AppStepper copyWith({
    List<MainStep>? mainSteps,
    int? mainIndex,
    int? subIndex,
  }) {
    return AppStepper(
      mainIndex: mainIndex ?? this.mainIndex,
      subIndex: subIndex ?? this.subIndex,
      mainSteps: mainSteps ?? this.mainSteps,
    );
  }

  @override
  List<Object> get props => [mainSteps, mainIndex, subIndex];

  static const List<MainStep> _initStepper = [
    MainStep(iconPath: Assets.iconsStepZipper, subSteps: [
      SubStep(subStep: SubSteps.zipperKind),
      SubStep(subStep: SubSteps.zipperGroup),
      SubStep(subStep: SubSteps.zipperType),
      SubStep(subStep: SubSteps.zipperCode),
    ]),
    MainStep(iconPath: Assets.iconsStepSeparator, subSteps: [
      SubStep(subStep: SubSteps.seperator),
      SubStep(subStep: SubSteps.bottomStopBox),
    ]),
    MainStep(iconPath: Assets.iconsStepCursor, subSteps: [
      SubStep(subStep: SubSteps.outterType),
      SubStep(subStep: SubSteps.outterColor),
      SubStep(subStep: SubSteps.outterLeftColor),
      SubStep(subStep: SubSteps.outterRightColor),
      SubStep(subStep: SubSteps.sewingThreadColor),
      SubStep(subStep: SubSteps.leftSewingThreadColor),
      SubStep(subStep: SubSteps.rightSewingThreadColor),
    ]),
    MainStep(iconPath: Assets.iconsStepHandgrip, subSteps: [
      SubStep(subStep: SubSteps.cursorType),
      SubStep(subStep: SubSteps.cursor),
      SubStep(subStep: SubSteps.cursorOverlayGroup),
      SubStep(subStep: SubSteps.cursorOverlayColor),
      SubStep(subStep: SubSteps.subCursorType),
      SubStep(subStep: SubSteps.subCursor),
      SubStep(subStep: SubSteps.subCursorOverlayGroup),
      SubStep(subStep: SubSteps.subCursorOverlayColor),
    ]),
    MainStep(iconPath: Assets.iconsStepOuttertype, subSteps: [
      SubStep(subStep: SubSteps.handgripGroup),
      SubStep(subStep: SubSteps.handgrips),
      SubStep(subStep: SubSteps.handgripOverlayGroup),
      SubStep(subStep: SubSteps.handgripOverlayColor),
      SubStep(subStep: SubSteps.mineSilmeColor),
      SubStep(subStep: SubSteps.subHandgripGroup),
      SubStep(subStep: SubSteps.subHandgrips),
      SubStep(subStep: SubSteps.subHandgripOverlayGroup),
      SubStep(subStep: SubSteps.subHandgripOverlayColor),
      SubStep(subStep: SubSteps.subMineSilmeColor),
    ]),
    MainStep(iconPath: Assets.iconsStepTopstop, subSteps: [
      SubStep(subStep: SubSteps.topStop),
      SubStep(subStep: SubSteps.topBottomStopConfig),
    ]),
    MainStep(iconPath: Assets.iconsStepColorLengthCount, subSteps: [
      SubStep(subStep: SubSteps.colorLengthCount),
    ]),
    MainStep(iconPath: Assets.iconsStepDetails, subSteps: [
      SubStep(subStep: SubSteps.details),
    ]),
  ];
}
