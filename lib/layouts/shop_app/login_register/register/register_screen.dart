// ignore_for_file: non_constant_identifier_names

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task/layouts/shop_app/login_register/register/register_cubit/cubit.dart';
import 'package:task/layouts/shop_app/login_register/register/register_cubit/states.dart';
import '../../../../network/local/cache_helper.dart';
import '../../../../shared/components/components.dart';
import '../../../../shared/themes/themes.dart';
import '../../shop_layout/shop_layout.dart';
import '../log_in/login_screen.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isVisible = false;
    var registerFormKey = GlobalKey<FormState>();
    var NameController = TextEditingController();
    var EmailController = TextEditingController();
    var PhoneController = TextEditingController();
    var PasswordController = TextEditingController();

    return BlocConsumer<RegisterCubit,RegisterStates>(
      listener: (context,state){
        if(state is RegisterSuccessState)
        {
          if(state.LoginModel.status)
          {
            showSnackBar(context: context,message: state.LoginModel.message, title: "Welcome", type: ContentType.success);
            CacheHelper.saveData(key: "token", value: state.LoginModel.data.token)
                .then((value){
              navigateAndFinish(context, ShopLayout());
            });

          }
          else
          {
            showSnackBar(
                context: context,
                message: state.LoginModel.message,
                title: "Error",
                type: ContentType.failure
            );
          }
        }
        else if(state is RegisterErrorState) {
          showSnackBar(context: context,
              message: "can't register at the moment",
              title: "error",
              type: ContentType.warning);
        }
      },
      builder: (context,state)
      {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Form(
                key: registerFormKey,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 100,),
                      const  Text("Register",
                        style: TextStyle(
                            fontSize: 40,
                        ),
                      ),
                      const SizedBox(
                        height: 50,),
                      defaultinputform(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "this field can not be empty";
                            }
                            return null;
                          },
                          submitted: (value){},
                          type: TextInputType.text,
                          prefix: Icons.person_2_outlined,
                          controller: NameController,
                          hint: "full name"
                      ),
                      const SizedBox(
                        height: 20,),
                      defaultinputform(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "this field can not be empty";
                            }
                            return null;
                          },
                          submitted: (value){},
                          type: TextInputType.emailAddress,
                          prefix: Icons.email_outlined,
                          controller: EmailController,
                          hint: "email"
                      ),
                      const SizedBox(
                        height: 20,),
                      defaultinputform(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "this field can not be empty";
                            }
                            return null;
                          },
                          submitted: (value){},
                          type: TextInputType.phone,
                          prefix: Icons.phone_outlined,
                          controller: PhoneController,
                          hint: "mobile number"
                      ),
                      const SizedBox(
                        height: 20,),
                      defaultinputform(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "this field can not be empty";
                            }
                            return null;
                          },
                          submitted: (value){},
                          isPassword: !RegisterCubit.get(context).isVisible,
                          type: TextInputType.visiblePassword,
                          prefix: Icons.lock_outline,
                          sufix: RegisterCubit.get(context).passSuffix,
                          suffixOnPressed: ()
                          {
                            RegisterCubit.get(context).changePasswordVisibility();
                          }
                          ,
                          controller: PasswordController,
                          hint: "password"
                      ),
                      const SizedBox(
                        height: 20,),
                      state is! RegisterLoadingState ?
                      defaultButton(text: "Register", isUpper: false, pressed: () {
                        if(registerFormKey.currentState!.validate())
                        {
                          RegisterCubit.get(context).userRegister(
                              name: NameController.text,
                              phone: PhoneController.text ,
                              email: EmailController.text,
                              password: PasswordController.text
                          );
                        }
                      }) :
                      const Center(child: CircularProgressIndicator(color: PrimaryColour,)),
                      const SizedBox(
                        height: 60,),
                      const Text(
                        "──────  or Sign up With  ──────",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          socialMediaIcons(
                              tapped: (){},
                              icon: EvaIcons.facebook,
                              backGroundColor: HexColor("#E1E1E1"),
                              iconColor: Colors.indigo
                          ),
                          const SizedBox(
                            width: 15,),
                          socialMediaIcons(
                              tapped: (){},
                              icon: EvaIcons.google,
                              backGroundColor: HexColor("#E1E1E1"),
                              iconColor: Colors.redAccent
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                              "already have an account?"),
                          TextButton(
                              onPressed: (){
                                navigateAndFinish(context,LogInScreen());
                              },
                              child: const Text("logIn Now",style: TextStyle(
                                  color: PrimaryColour
                              ),)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
