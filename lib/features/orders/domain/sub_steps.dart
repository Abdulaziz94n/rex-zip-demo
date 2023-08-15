import 'package:equatable/equatable.dart';

class SubStep extends Equatable {
  final String name;
  final bool isCompleted;
  const SubStep({
    required this.name,
    this.isCompleted = false,
  });

  @override
  List<Object> get props => [name];

  SubStep copyWith({
    String? name,
    bool? isCompleted,
  }) {
    return SubStep(
      name: name ?? this.name,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
