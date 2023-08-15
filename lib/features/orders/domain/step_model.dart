import 'package:equatable/equatable.dart';
import 'package:rex_zip/features/orders/domain/sub_steps.dart';

class AppStep extends Equatable {
  final String iconPath;
  final List<SubStep> subSteps;
  final bool isCompleted;
  const AppStep({
    required this.iconPath,
    required this.subSteps,
    this.isCompleted = false,
  });

  @override
  List<Object> get props => [iconPath, subSteps];

  AppStep copyWith({
    String? iconPath,
    List<SubStep>? subSteps,
    bool? isCompleted,
  }) {
    return AppStep(
      iconPath: iconPath ?? this.iconPath,
      subSteps: subSteps ?? this.subSteps,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
