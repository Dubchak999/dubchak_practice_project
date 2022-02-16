import 'package:dubchak_practice_project/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(const App()),
      blocObserver: SimpleBlocObserver());
}
