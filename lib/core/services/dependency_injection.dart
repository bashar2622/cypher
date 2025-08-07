import 'package:cipher/features/auth/presentation/state_managment/sign_up_bloc.dart';
import 'package:cipher/features/home/presentation/state_managment/home_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initDependency() async {
  // // Bloc
  sl.registerFactory<SignUpBloc>(() => SignUpBloc());

  sl.registerFactory<HomeBloc>(() => HomeBloc());
}
