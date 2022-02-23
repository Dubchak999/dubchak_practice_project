import 'package:dubchak_practice_project/modules/firebase_login/app/app.dart';
import 'package:dubchak_practice_project/modules/firebase_login/home/view/home_page.dart';
import 'package:dubchak_practice_project/modules/firebase_login/login/login.dart';
import 'package:flutter/material.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
