import 'package:peih/actions/picture.dart';
import 'package:peih/models/app_state.dart';
import 'package:peih/models/picture.dart';

// AppSate Reducer
AppState appStateReducer(AppState state, action) {
  return AppState(
    pictures: pictureReducer(state.pictures, action),
  );
}

// Picture reducer
List<Picture> pictureReducer(List<Picture> previousState, action) {
  // Define new state
  List<Picture> newState = []..addAll(previousState);

  // Add picture
  if (action is AddPicture) return newState..add(action.picture);

  // Update picture
  if (action is RemovePicture) return newState..add(action.picture);

  // Remove picture
  if (action is UpdatePicture) return newState..add(action.picture);

  // Case action invalid return null
  return null;
}

// etc..
