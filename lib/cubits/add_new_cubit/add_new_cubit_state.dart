abstract class AddNewCubitState {}

class AddNewCubitInitial extends AddNewCubitState {}

class AddNewCubitLouding extends AddNewCubitState {}

class AddNewCubitSucceful extends AddNewCubitState {}

class AddNewCubitFuiler extends AddNewCubitState {
 final String errMassage;

  AddNewCubitFuiler(this.errMassage);
}
