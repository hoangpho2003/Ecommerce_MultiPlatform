import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ecommerce_hptshop/utils/constants/text_strings.dart';
import 'package:ecommerce_hptshop/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: HptTexts.appName,
      themeMode: ThemeMode.system,
      theme: HptAppTheme.lightTheme,
      darkTheme: HptAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const Scaffold(
        body: Center(
          child: Text('Awesome! 🎊 Project Structure is set up and running. \n Happy T Coding 🎊', textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}
