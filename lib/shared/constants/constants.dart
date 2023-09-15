import 'package:task/layouts/shop_app/log_in/login_screen.dart';
import 'package:task/shared/components/components.dart';

import '../../network/local/cache_helper.dart';

void SignOut(context)
{
  CacheHelper.removeData(key: "token").then((value)
  {
    if(value)
      {
        navigateAndFinish(context,LogInScreen());
      }
  });
}