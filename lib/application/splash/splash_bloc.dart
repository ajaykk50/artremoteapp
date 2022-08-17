import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial()) {
    on<Gotohome>((event, emit) async {
      emit(const SplashState(isLoading: true, isLoaded: false));
      await Future.delayed(const Duration(seconds: 4));
      emit(const SplashState(isLoading: false, isLoaded: true));
    });
  }
}
