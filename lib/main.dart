import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:ezcart/providers/BottomViewProvider.dart';
import 'package:ezcart/routes/router.dart';
import 'package:ezcart/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BottomViewProvider(),
        )
      ],
      child: DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => ThemeData(
          textTheme: TextTheme(
            bodyText1: TextStyle(
              fontFamily: "SourceSans",
            ),
          ),
          primarySwatch: Colors.indigo,
          brightness: brightness,
        ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: theme,
            initialRoute: INDEX,
            onGenerateRoute: onGenerateRoute,
          );
        },
      ),
    );
  }
}
