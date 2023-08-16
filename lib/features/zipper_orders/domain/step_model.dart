import 'package:equatable/equatable.dart';
import 'package:rex_zip/features/zipper_orders/domain/sub_step_model.dart';

class MainStep extends Equatable {
  final String iconPath;
  final List<SubStep> subSteps;
  final bool isCompleted;
  const MainStep({
    required this.iconPath,
    required this.subSteps,
    this.isCompleted = false,
  });

  @override
  List<Object> get props => [iconPath, subSteps, isCompleted];

  MainStep copyWith({
    String? iconPath,
    List<SubStep>? subSteps,
    bool? isCompleted,
  }) {
    return MainStep(
      iconPath: iconPath ?? this.iconPath,
      subSteps: subSteps ?? this.subSteps,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
