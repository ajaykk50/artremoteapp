import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'image_selection_event.dart';
part 'image_selection_state.dart';
part 'image_selection_bloc.freezed.dart';

class ImageSelectionBloc
    extends Bloc<ImageSelectionEvent, ImageSelectionState> {
  ImageSelectionBloc() : super(ImageSelectionState.initial()) {
    on<ImageSelectionEvent>((event, emit) async {
      ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      emit(ImageSelectionState(filepath: image));
    });
  }
}
