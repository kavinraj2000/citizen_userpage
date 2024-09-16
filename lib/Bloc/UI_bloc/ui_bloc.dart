import 'package:bloc/bloc.dart';
import 'package:citizen_userpage/Bloc/UI_bloc/ui_event.dart';
import 'package:citizen_userpage/Bloc/UI_bloc/ui_state.dart';

class FamilyBloc extends Bloc<FamilyEvent, FamilyState> {
  FamilyBloc() : super(FamilyLoading());

  List<Map<String, String>> familyMembers = [
    {"initial": "L", "name": "Lakshmi", "role": "Mother"},
    {"initial": "J", "name": "Jothi", "role": "Sister"},
    {"initial": "P", "name": "Pooja", "role": "Cousin"},
    {"initial": "B", "name": "Ben", "role": "Friend"},
  ];

  Stream<FamilyState> mapEventToState(FamilyEvent event) async* {
    if (event is GetFamilyMembers) {
      yield FamilyLoading();
      await Future.delayed(
          const Duration(seconds: 1)); // Simulating network delay
      yield FamilyLoaded(familyMembers: familyMembers);
    } else if (event is AddFamilyMember) {
      yield FamilyLoading();
      familyMembers.add({
        "initial": event.initial,
        "name": event.name,
        "role": event.role,
      });
      yield FamilyLoaded(familyMembers: familyMembers);
    }
  }
}
