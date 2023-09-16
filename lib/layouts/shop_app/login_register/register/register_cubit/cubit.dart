import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/layouts/shop_app/login_register/register/register_cubit/states.dart';
import 'package:task/network/remote/dio_helper.dart';
import 'package:task/network/remote/end_points/end_points.dart';
import '../../../../../models/login_model/login_model.dart';

class RegisterCubit extends Cubit<RegisterStates>
{
  RegisterCubit(super.initialState);

  late LoginModel userDataModel;

  bool isVisible = false;

  IconData passSuffix = Icons.visibility_outlined;

  static RegisterCubit get(context) => BlocProvider.of(context);

  void changePasswordVisibility() {
    isVisible=!isVisible;
    isVisible ? passSuffix=Icons.visibility_off_outlined : passSuffix=Icons.visibility_outlined;
    emit(RegisterChangePasswordVisibility());
  }

  void userRegister({required String name, required String email,
    required String phone, required String password
  }){
    emit(RegisterLoadingState());
    DioHelper.postData(
      lang: "en",
      url: REGISTER,
      data: {
        "name":name,
        "email":email,
        "password":password,
        "phone":phone,
      },
    ).then((value){
      print(value.data);
      userDataModel= LoginModel.fromjson(value.data);
      //print(userDataModel.message);
      emit(RegisterSuccessState(userDataModel));
    }).catchError((onError)
    {
      print(onError.toString());
      emit(RegisterErrorState(onError.toString()));
    }
    );
  }
}