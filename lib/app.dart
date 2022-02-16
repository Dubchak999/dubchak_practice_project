import 'package:flutter/material.dart';

import 'modules/posts/view/posts_page.dart';

// import 'counter/counter.dart';

class App extends MaterialApp {
  const App({Key? key}) : super(key: key, home: const PostsPage());
}
