import 'package:ai_chat_gpt/pages/main_page/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'auth/auth.dart';
import 'necessary_component/screen_size.dart';


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  bool authCheck = false;
  @override
  void initState() {
    checkAuth();
    super.initState();
  }

  checkAuth()async{
    authCheck = await Auth.checkToken();
  }
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;

    return HomePage();
    // return const HomePage();
  }
}
