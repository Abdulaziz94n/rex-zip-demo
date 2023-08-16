import 'package:equatable/equatable.dart';
import 'package:rex_zip/features/zipper_orders/domain/sub_steps_enum.dart';

class SubStep extends Equatable {
  final SubSteps subStep;
  final bool isCompleted;
  const SubStep({
    required this.subStep,
    this.isCompleted = false,
  });

  @override
  List<Object> get props => [subStep];

  SubStep copyWith({
    SubSteps? subStep,
    bool? isCompleted,
  }) {
    return SubStep(
      subStep: subStep ?? this.subStep,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
