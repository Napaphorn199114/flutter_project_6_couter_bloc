import 'package:bloc/bloc.dart';



class MyBlocObserver extends BlocObserver {

 @override
  void onTransition(Bloc bloc, Transition transition) {  // ดักตัวแปร state เปลี่ยน
    print("AppBlocObserver"+transition.toString());
    super.onTransition(bloc, transition);
    // TODO: implement onChange
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
  }

 
}