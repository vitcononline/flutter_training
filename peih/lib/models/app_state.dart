import 'package:flutter/foundation.dart';
import 'package:peih/models/picture.dart';

// Define an AppState class that contains a List of Pictures.
class AppState {

  // Add any state below eg: [items, books, services, ...]
  final List<Picture> pictures;

  // Define constructor
  AppState({@required this.pictures});

  // Init appState
  AppState.initialState() : pictures = List.unmodifiable(<Picture>[]);
}
