import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medexer/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medexer/core/middlewares/core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:country_picker/country_picker.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/secrets.dart';
import 'package:medexer/data/repositories/index.dart';
import 'package:medexer/core/themes/theme_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:medexer/data/repositories/common_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  await dotenv.load(fileName: ".env");

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );

  final updateService = AppUpdateService();

  updateService.initialize();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GetStorage localStorage = GetStorage();
  String initialRoute = AppRoutes.rootRoute;

  final ThemeProvider themeProvider = Get.put(ThemeProvider());
  final RootRepository rootRepository = Get.put(RootRepository());
  final CommonRepository commonRepository = Get.put(CommonRepository());

  @override
  void initState() {
    rootRepository.initialize();

    // setupInitialRoute();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void setupInitialRoute() {
    final hasToken =
        localStorage.read(LocalStorageSecrets.dexerAccessToken) != null;
    initialRoute = hasToken ? AppRoutes.dashboardRoute : AppRoutes.rootRoute;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        title: 'medexer',
        supportedLocales: const [
          Locale('en'),
        ],
        themeMode: ThemeMode.dark,
        initialRoute: initialRoute,
        getPages: AppRoutes.routes,
        theme: themeProvider.themeData,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          CountryLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
      );
    });
  }
}
