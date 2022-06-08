import 'package:flutter/material.dart';
import 'package:olx_clone/screens/base_page.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:olx_clone/services/configs.dart';
void main() async{
  // Garante a inicialização do parse antes de rodar o app
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  runApp(const MyApp());
}

Future<void> initializeParse() async{
  await Parse().initialize(
    Config.appId,
    Config.apiUrl,
    clientKey: Config.clientKey,
    autoSendSessionId: true,
    debug: true
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OLX clone',  
      home: HomePage(),
    );
  }
}
