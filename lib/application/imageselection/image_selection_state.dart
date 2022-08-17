part of 'image_selection_bloc.dart';

@freezed
class ImageSelectionState with _$ImageSelectionState {
  const factory ImageSelectionState({
    required XFile? filepath,
  }) = _ImageSelectionState;

  factory ImageSelectionState.initial() =>
      const ImageSelectionState(filepath: null);
}
