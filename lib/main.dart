import 'package:base/mainProvider.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:base/src/routers/Routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:provider_architecture/_viewmodel_provider.dart';

import 'generated/l10n.dart';
import 'src/utils/Locator.dart';
import 'src/utils/SharePrefs.dart';

void main() async {
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await locator<SharePrefs>().setup();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  bool isName = false;

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider.withConsumer(
      builder: (ctx, provider, _) {
        return MaterialApp(
          title: 'Flutter',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Roboto'),
          initialRoute: isName ? RouterName.home : RouterName.login,
          onGenerateRoute: Routers.generateRoute,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
        );
      },
      viewModelBuilder: () => MainProvider(),
      onModelReady: (model) => model.initialise(),
    );
  }
}

void _openLoadingDialog(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: CircularProgressIndicator(),
      );
    },
  );
}

void showLongToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
  );
}
