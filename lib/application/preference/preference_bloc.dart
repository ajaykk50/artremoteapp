import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preference_event.dart';
part 'preference_state.dart';
part 'preference_bloc.freezed.dart';

class PreferenceBloc extends Bloc<PreferenceEvent, PreferenceState> {
  PreferenceBloc() : super(PreferenceState.initial()) {
    on<Prefdata>((event, emit) async {
      final sharedPrefs = await SharedPreferences.getInstance();
      var token = sharedPrefs.getString('token');
      emit(PreferenceState(token: token.toString()));
    });
  }
}
