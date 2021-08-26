import 'dart:io';

import 'package:best_sellers/data/rest_ds.dart';
import 'package:best_sellers/entities/User.dart';
import 'package:image_picker_platform_interface/src/types/picked_file/unsupported.dart';

abstract class RegisterScreenContract {
  void onRegisterSuccess(User user);
  void onRegisterError(String errorTxt);
}

class RegisterScreenPresenter {
  RegisterScreenContract _view;
  RestDatasource api = new RestDatasource();

  RegisterScreenPresenter(this._view);

  void doRegister(String username, String password, String email, String phone,
      String address, File imageFile) async {
    try {
      Map registerData = {
        'full_name': username,
        'email': email,
        'password': password,
        'phone': phone,
        'address': address,
        'status': '0',
        'profile_picture': imageFile
      };
      var status = await api.register(registerData);

      _view.onRegisterSuccess(status);
    } catch (e) {
      _view.onRegisterError(e.toString());
    }
  }
}