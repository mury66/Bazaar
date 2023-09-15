import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/components/components.dart';
import '../../../shared/themes/themes.dart';
import '../log_in/cubit/cubit.dart';
import '../log_in/cubit/states.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isVisible = false;
    var registerFormKey = GlobalKey<FormState>();
    var EmailController = TextEditingController();
    var PasswordController = TextEditingController();

    return BlocProvider(
      create: (context)=>LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context,state){},
        builder: (context,state)
        {
          return Scaffold(
            appBar: AppBar(),
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

                        const  Text("REGISTER",
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
                            prefix: Icons.person_2_outlined,
                            controller: EmailController,
                            hint: "enter your full name"
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
                            hint: "enter your email"
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
                            hint: "enter your password"
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
                            hint: "confirm your password"
                        ),
                        const SizedBox(
                          height: 20,),
                        ConditionalBuilder(
                            condition: State is! LoginLoadingState,

                            builder: (context)=>
                                defaultButton(
                                    text: "register",
                                    isUpper: true,
                                    pressed: ()
                                    {
                                      if(registerFormKey.currentState!.validate())
                                      {
                                        LoginCubit.get(context).userLogin(
                                            email: EmailController.text,
                                            password: PasswordController.text
                                        );
                                      }
                                    }
                                ),

                            fallback: (context)=>
                            const Center(child: CircularProgressIndicator(
                              color: PrimaryColour,
                            ))
                        ),
                        const SizedBox(
                          height: 60,),
                        const Text(
                          "──────────  or Sign up With  ──────────",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 63,
                                height: 63,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(158, 213, 213, 213),
                                    borderRadius: BorderRadius.circular(12)

                                ),
                                child: Icon(EvaIcons.facebook)),
                            SizedBox(width: 15,),
                            Container(
                                width: 63,
                                height: 63,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(158, 213, 213, 213),
                                    borderRadius: BorderRadius.circular(12)

                                ),
                                child: Icon(EvaIcons.google)),
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
                                  navigateTo(context,const RegisterScreen());
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
      ),
    );
  }
}
