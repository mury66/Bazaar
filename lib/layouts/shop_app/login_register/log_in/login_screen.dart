import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task/layouts/shop_app/login_register/register/register_screen.dart';
import 'package:task/layouts/shop_app/shop_layout/shop_layout.dart';
import 'package:task/shared/components/components.dart';
import 'package:task/shared/themes/themes.dart';
import '../../../../network/local/cache_helper.dart';
import 'login_cubit/cubit.dart';
import 'login_cubit/states.dart';


class LogInScreen extends StatelessWidget {

    var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    bool isVisible = false;
    var EmailController = TextEditingController();
    var PasswordController = TextEditingController();

    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (context,state) {
        if(state is LoginSuccessState)
          {
            if(state.LoginModel.status)
              {
                showSnackBar(context: context,message: state.LoginModel.message, title: "LoggedIn", type: ContentType.success);
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
        else if(state is LoginErrorState){
          showSnackBar(context: context,message:"can't login at the moment",title: "error", type: ContentType.warning);
        }

      },
      builder: (context,state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 100,),
                      const  Text("Login",
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
                          submitted: (value){
                            if(formKey.currentState!.validate())
                            {
                              LoginCubit.get(context).userLogin(
                                  email: EmailController.text,
                                  password: PasswordController.text
                              );
                            }
                          },
                          isPassword: !LoginCubit.get(context).isVisible,
                          type: TextInputType.visiblePassword,
                          prefix: Icons.lock_outline,
                          sufix: LoginCubit.get(context).passSuffix,
                          suffixOnPressed: ()
                          {
                            LoginCubit.get(context).changePasswordVisibility();
                          }
                          ,
                          controller: PasswordController,
                          hint: "password"
                      ),
                      const SizedBox(
                        height: 20,),
                  state is! LoginLoadingState ?
                  defaultButton(text: "Login", isUpper: false, pressed: () {
                      if(formKey.currentState!.validate())
                      {
                        LoginCubit.get(context).userLogin(
                            email: EmailController.text,
                            password: PasswordController.text
                        );
                      }
                    }) :
                  const Center(child: CircularProgressIndicator(color: PrimaryColour,))
                      ,const SizedBox(
                        height: 60,),
                      const Text(
                          "───────  or Sign In With  ───────",
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
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                              "don't have an Account?"),
                          TextButton(
                              onPressed: (){
                                navigateAndFinish(context,RegisterScreen());
                              },
                              child: const Text("Register Now",style: TextStyle(
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
