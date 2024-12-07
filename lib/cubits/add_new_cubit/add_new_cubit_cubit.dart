import 'package:bloc/bloc.dart';

import 'add_new_cubit_state.dart';

class AddNewCubitCubit extends Cubit<AddNewCubitState> {
  AddNewCubitCubit() : super(AddNewCubitInitial());
}
