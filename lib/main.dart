import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/layouts/shop_app/log_in/login_screen.dart';
import 'package:task/layouts/shop_app/on_boarding/on_boarding.dart';
import 'package:task/layouts/shop_app/shop_layout/shop_layout.dart';
import 'package:task/network/remote/dio_helper.dart';
import 'package:task/shared/blocObserver.dart';
import 'package:task/shared/cubit/Appcubit.dart';
import 'package:task/shared/cubit/Appstates.dart';
import 'package:task/shared/cubit/shop_cubit.dart';
import 'package:task/shared/cubit/Shop_states.dart';
import 'package:task/shared/themes/themes.dart';
import 'network/local/cache_helper.dart';

  void main() async
  {
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = const SimpleBlocObserver();
    DioHelper.init();
    await CacheHelper.init();
    bool? isDark = CacheHelper.getData(key: "isDark");
    String? token = CacheHelper.getData(key: "token");
    bool? onBoarding = CacheHelper.getData(key: "onBoarding");
    late Widget startWidget;

    if(onBoarding!=null)
      {
        if(token!=null)
          {
            startWidget = ShopLayout();
          }
        else
          {
            startWidget = LogInScreen();

          }
      }
    else
      {
        startWidget = OnBoardingScreen();
      }

    runApp(MyApp(isDark!,startWidget!));
}

class MyApp extends StatelessWidget {

  final bool isDark;
  final Widget startWidget;

  const MyApp(this.isDark, this.startWidget);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>ShopCubit(ShopInitialState())),
        BlocProvider(create: (context)=>AppCubit(AppInitialState())..changeAppMode(isDark))
      ],
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (BuildContext context, state)=>{} ,
        builder: (BuildContext context, state) {
          {
            var cubit = AppCubit.get(context);
            return MaterialApp(
          title: 'Flutter Demo',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: cubit.isDark? ThemeMode.dark:ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: startWidget,
          );
        }
        }
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
