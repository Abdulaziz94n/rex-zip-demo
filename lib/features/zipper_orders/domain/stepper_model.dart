import 'package:equatable/equatable.dart';
import 'package:rex_zip/core/utils/assets_manager.dart';
import 'package:rex_zip/features/zipper_orders/domain/step_model.dart';
import 'package:rex_zip/features/zipper_orders/domain/sub_step_model.dart';
import 'package:rex_zip/features/zipper_orders/domain/sub_steps_enum.dart';

class AppStepper extends Equatable {
  final List<MainStep> mainSteps;
  final int mainIndex;
  final int subIndex;

  AppStepper({
    this.mainIndex = 0,
    this.subIndex = 0,
  }) : mainSteps = _initStepper;

  AppStepper copyWith({
    List<MainStep>? mainSteps,
    int? mainIndex,
    int? subIndex,
  }) {
    return AppStepper(
      mainIndex: mainIndex ?? this.mainIndex,
      subIndex: subIndex ?? this.subIndex,
    );
  }

  @override
  List<Object> get props => [mainSteps, mainIndex, subIndex];

  static final List<MainStep> _initStepper = [
    const MainStep(iconPath: Assets.iconsStepZipper, subSteps: [
      SubStep(subStep: SubSteps.zipperKind),
      SubStep(subStep: SubSteps.zipperGroup),
      SubStep(subStep: SubSteps.zipperType),
      SubStep(subStep: SubSteps.zipperCode),
    ]),
    const MainStep(iconPath: Assets.iconsStepSeparator, subSteps: [
      SubStep(subStep: SubSteps.seperator),
      SubStep(subStep: SubSteps.bottomStopBox),
    ]),
    const MainStep(iconPath: Assets.iconsStepCursor, subSteps: [
      SubStep(subStep: SubSteps.outterType),
      SubStep(subStep: SubSteps.outterColor),
      SubStep(subStep: SubSteps.outterLeftColor),
      SubStep(subStep: SubSteps.outterRightColor),
      SubStep(subStep: SubSteps.sewingThreadColor),
      SubStep(subStep: SubSteps.leftSewingThreadColor),
      SubStep(subStep: SubSteps.rightSewingThreadColor),
    ]),
    const MainStep(iconPath: Assets.iconsStepHandgrip, subSteps: [
      SubStep(subStep: SubSteps.cursorType),
      SubStep(subStep: SubSteps.cursor),
      SubStep(subStep: SubSteps.cursorOverlayGroup),
      SubStep(subStep: SubSteps.cursorOverlayColor),
      SubStep(subStep: SubSteps.subCursorType),
      SubStep(subStep: SubSteps.subCursor),
      SubStep(subStep: SubSteps.subCursorOverlayGroup),
      SubStep(subStep: SubSteps.subCursorOverlayColor),
    ]),
    const MainStep(iconPath: Assets.iconsStepOuttertype, subSteps: [
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
    const MainStep(iconPath: Assets.iconsStepTopstop, subSteps: [
      SubStep(subStep: SubSteps.topStop),
      SubStep(subStep: SubSteps.topBottomStopConfig),
    ]),
    const MainStep(iconPath: Assets.iconsStepColorLengthCount, subSteps: [
      SubStep(subStep: SubSteps.colorLengthCount),
    ]),
    const MainStep(iconPath: Assets.iconsStepDetails, subSteps: [
      SubStep(subStep: SubSteps.details),
    ]),
  ];
}
