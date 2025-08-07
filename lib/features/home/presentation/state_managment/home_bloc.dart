import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<GetDataHomeEvent>((event, emit) async {
      emit(LoadingHomeState());
      await Future.delayed(Duration(seconds: 3));
      emit(SuccessHomeState());
    });
  }
}
