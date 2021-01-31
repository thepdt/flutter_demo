import 'package:flutter_demo/helpers/shared_preferences_helper.dart';
import 'package:flutter_demo/models/login_model.dart';

const String googleMapAPIKey = 'AIzaSyBvIWwUz2ntI_TidS5I3LNHdTu1rNTp66k';

getGlobal() async {
  var login = await LocalHelper.getAccountFromLocal();
  currentLogin = login;
}

LoginModel currentLogin;
