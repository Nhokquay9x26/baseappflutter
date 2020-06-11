import 'package:base/mainProvider.dart';
import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:base/src/routers/Routers.dart';
import 'package:base/src/utils/push_notifications.dart';
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
  await locator<SharePrefs>().init();
  await PushNotificationsManager().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<MainProvider>.withConsumer(
      builder: (ctx, model, child) {
        return MaterialApp(
          title: 'Flutter',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Roboto'),
          initialRoute: RouterName.login ,
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

void openLoadingDialog(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          content: Container(
        height: width100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(new Radius.circular(width20)),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextApp(S.of(context).loading),
            CircularProgressIndicator(
              backgroundColor: COLOR_APP,
            )
          ],
        )),
      ));
    },
  );
}

void showLongToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
  );
}
