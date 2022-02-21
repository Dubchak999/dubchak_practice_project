import 'package:dubchak_practice_project/modules/firebase_login/app/bloc_observer.dart';
import 'package:dubchak_practice_project/modules/firebase_login/app/view/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:authentication_repository/authentication_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;

  BlocOverrides.runZoned(
      () => runApp(App(authenticationRepository: authenticationRepository)),
      blocObserver: AppBlocObserver());
}
