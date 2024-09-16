abstract class FamilyState {}

class FamilyLoading extends FamilyState {}

class FamilyLoaded extends FamilyState {
  final List<Map<String, String>> familyMembers;

  FamilyLoaded({required this.familyMembers});
}

class FamilyError extends FamilyState {
  final String message;

  FamilyError({required this.message});
}
