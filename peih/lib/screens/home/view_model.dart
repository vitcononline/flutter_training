import 'package:peih/actions/picture.dart';
import 'package:peih/models/app_state.dart';
import 'package:peih/models/picture.dart';
import 'package:redux/redux.dart';


class ViewModel {
  final List<Picture> pictures;
  final Function(Picture) onAddPicture;
  final Function(Picture) onRemovePicture;
  final Function(Picture) onUpdatePicture;

  ViewModel(
      {this.pictures,
      this.onAddPicture,
      this.onRemovePicture,
      this.onUpdatePicture});

  factory ViewModel.create(Store<AppState> store) {
    _onAddPicture(Picture picture) {
      store.dispatch(AddPicture(picture));
    }

    _onRemovePicture(Picture picture) {
      store.dispatch(AddPicture(picture));
    }

    _onUpdatePicture(Picture picture) {
      store.dispatch(AddPicture(picture));
    }

    return ViewModel(
      pictures: store.state.pictures,
      onAddPicture: _onAddPicture,
      onRemovePicture: _onRemovePicture,
      onUpdatePicture: _onUpdatePicture,
    );
  }
}