import 'package:flutter/material.dart';

import '../../home/view/home_page.dart';
import '../../login/login.dart';
import '../app.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:

    default:
      return [LoginPage.page()];
  }
}
