abstract class FamilyEvent {}

class GetFamilyMembers extends FamilyEvent {}

class AddFamilyMember extends FamilyEvent {
  final String initial;
  final String name;
  final String role;

  AddFamilyMember(
      {required this.initial, required this.name, required this.role});
}
