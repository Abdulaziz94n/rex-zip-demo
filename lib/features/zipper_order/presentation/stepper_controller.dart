import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/features/zipper_order/domain/main_step_model.dart';
import 'package:rex_zip/features/zipper_order/domain/stepper_model.dart';
import 'package:rex_zip/features/zipper_order/domain/sub_step_model.dart';

class StepperController extends Notifier<AppStepper> {
  @override
  build() {
    return const AppStepper();
  }

  // TODO: Improve and simplify logic

  MainStep currentStep() {
    return state.mainSteps[state.mainIndex];
  }

  SubStep currentSubStep() {
    return state.mainSteps[state.mainIndex].subSteps[state.subIndex];
  }

  // TODO: Refactor code
  void next() {
    List<MainStep> mainSteps = state.mainSteps;
    int mainIndex = state.mainIndex;
    MainStep currentStep = state.mainSteps[mainIndex];
    int subIndex = state.subIndex;
    int subStepsLength = state.mainSteps[mainIndex].subSteps.length;
    if (subIndex < subStepsLength - 1) {
      state = state.copyWith(
          mainSteps: mainSteps
              .map((mainStep) => _convertSubStepToCompleted(
                    mainIndex: mainIndex,
                    mainStep: mainStep,
                    mainSteps: mainSteps,
                    subIndex: subIndex,
                  ))
              .toList());
      state = state.copyWith(subIndex: ++subIndex);
      return;
    } else if (subIndex >= subStepsLength - 1 &&
        mainIndex < state.mainSteps.length - 1) {
      state = state.copyWith(
        mainIndex: ++mainIndex,
        subIndex: 0,
        mainSteps: mainSteps
            .map((e) => _convertMainStepToCompleted(
                  mainStep: e,
                  currentStep: currentStep,
                ))
            .toList(),
      );
      return;
    } else {
      return;
    }
  }

  void goToSubStep(int index) {
    state = state.copyWith(subIndex: index);
  }

  void goToMainStep(int index) {
    state = state.copyWith(mainIndex: index, subIndex: 0);
  }

  MainStep _convertMainStepToCompleted({
    required MainStep mainStep,
    required MainStep currentStep,
  }) {
    if (mainStep == currentStep) {
      mainStep = mainStep.copyWith(
          isCompleted: true,
          subSteps: mainStep.subSteps.indexed.map((e) {
            if (e.$1 == mainStep.subSteps.length - 1) {
              return e.$2.copyWith(isCompleted: true);
            }
            return e.$2;
          }).toList());
      return mainStep;
    }
    return mainStep;
  }

  MainStep _convertSubStepToCompleted({
    required List<MainStep> mainSteps,
    required MainStep mainStep,
    required int mainIndex,
    required int subIndex,
  }) {
    if (mainStep == mainSteps[mainIndex]) {
      mainStep = mainStep.copyWith(
        subSteps: mainStep.subSteps.map((subStep) {
          if (subStep == mainStep.subSteps[subIndex]) {
            return subStep = subStep.copyWith(isCompleted: true);
          }
          return subStep;
        }).toList(),
      );
    }
    return mainStep;
  }
}

final stepperController = NotifierProvider<StepperController, AppStepper>(
  StepperController.new,
);
