import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/features/zipper_orders/domain/stepper_model.dart';

class StepperController extends Notifier<AppStepper> {
  @override
  build() {
    print('STEPPER CONTROLLER BUILD');
    return AppStepper();
  }

  void next() {
    int mainIndex = state.mainIndex;
    int subIndex = state.subIndex;
    int subStepsLength = state.mainSteps[mainIndex].subSteps.length;
    if (subIndex < subStepsLength - 1) {
      state = state.copyWith(subIndex: ++subIndex);
      print(subIndex);

      return;
    } else if (subIndex >= subStepsLength - 1 &&
        mainIndex < state.mainSteps.length - 1) {
      state = state.copyWith(mainIndex: ++mainIndex, subIndex: 0);
      return;
    } else {
      return;
    }
  }

  void goTo() {}
}

final stepperController = NotifierProvider<StepperController, AppStepper>(
  StepperController.new,
);
