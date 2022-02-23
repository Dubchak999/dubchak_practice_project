import 'package:authentication_repository/authentication_repository.dart';
import 'package:dubchak_practice_project/firebase_options.dart';
import 'package:dubchak_practice_project/modules/firebase_login/app/bloc_observer.dart';
import 'package:dubchak_practice_project/modules/firebase_login/app/view/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() {
  return BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      final authenticationRepository = AuthenticationRepository();
      await authenticationRepository.user.first;

      runApp(
        App(authenticationRepository: authenticationRepository),
      );
    },
    blocObserver: AppBlocObserver(),
  );
}
