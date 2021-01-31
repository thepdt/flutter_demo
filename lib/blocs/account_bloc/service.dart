import 'dart:convert';

import 'package:flutter_demo/blocs/bloc_service.dart';
import 'package:flutter_demo/global/global_variable.dart';
import 'package:flutter_demo/helpers/http_helper.dart';
import 'package:flutter_demo/helpers/shared_preferences_helper.dart';
import 'package:flutter_demo/models/account_model.dart';
import 'package:flutter_demo/models/login_model.dart';

class AccountService extends BlocService<AccountModel> {
  @override
  Future<AccountModel> get(int id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<AccountModel>> getAll({int from = 0, int limit}) async {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  Future<AccountModel> getAccountFromLocal() async {
    var login = await LocalHelper.getAccountFromLocal();
    currentLogin = login;
    if (login != null) return login.account;
    return null;
  }

  Future<AccountModel> _updateAccountInfoToLocal(
      AccountModel accountModel) async {
    var login = await LocalHelper.getAccountFromLocal();
    login.account = accountModel;
    var account = await LocalHelper.saveAccountToLocal(login);
    currentLogin = login;
    return account;
  }

  Future<AccountModel> updateDefaultDeliveryId(int deliveryId) async {
    var rs = await HttpHelper.put(
        ACCOUNT_ENDPOINT + "/defaultDeliveryId", {"deliveryId": deliveryId},
        bearerToken: currentLogin.token);
    if (rs.statusCode == 200) {
      var jsonObject = jsonDecode(rs.body);
      var currentAccount = AccountModel.fromJson(jsonObject);
      return await _updateAccountInfoToLocal(currentAccount);
    }
    return null;
  }
}
