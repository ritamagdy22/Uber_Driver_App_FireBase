import 'package:flutter_bloc/flutter_bloc.dart';

part 'cubit_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthtInitial());

// we are just intializing small instance from cubit 

static AuthCubit get(context)=> BlocProvider.of(context);



RegisterDriverApp() {}


SaveCarInfo(){}


Login(){}




}
