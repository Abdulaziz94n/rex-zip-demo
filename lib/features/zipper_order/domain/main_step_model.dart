import 'package:equatable/equatable.dart';
import 'package:rex_zip/features/zipper_order/domain/sub_step_model.dart';

class MainStep extends Equatable {
  final String title;
  final String iconPath;
  final List<SubStep> subSteps;
  final bool isCompleted;
  const MainStep({
    required this.iconPath,
    required this.subSteps,
    required this.title,
    this.isCompleted = false,
  });

  @override
  List<Object> get props => [iconPath, subSteps, isCompleted];
  MainStep copyWith({
    String? title,
    String? iconPath,
    List<SubStep>? subSteps,
    bool? isCompleted,
  }) {
    return MainStep(
      title: title ?? this.title,
      iconPath: iconPath ?? this.iconPath,
      subSteps: subSteps ?? this.subSteps,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
