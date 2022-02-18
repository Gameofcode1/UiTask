import 'package:flutter/material.dart';
import 'package:hospital/ui/views/home.dart';
import 'package:provider/provider.dart';
import 'core/viewmodels/uiData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Builder(
      builder: (BuildContext context) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => UIdata()),
          ],
          child: MaterialApp(
            theme: Theme.of(context).copyWith(
              appBarTheme:
                  Theme.of(context).appBarTheme.copyWith(color: Colors.red),
            ),
            debugShowCheckedModeBanner: false,
            home: HospitalHome(),
          ),
        );
      },
    );
  }
}
