import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kooha_test/core/constants/color_constant.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';
import 'package:kooha_test/core/utils/widget_extension.dart';
import 'package:kooha_test/pages/nav_bar.dart';
import 'package:kooha_test/widgets/app_textfield.dart';
import 'package:kooha_test/widgets/custom_app_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool hidePasswordConfirm = true;
  bool check = false;
  String _errorMessage = '';
  final email = TextEditingController();
  final nameEd = TextEditingController();
  final password = TextEditingController();

  @override
  void initState() {
    hidePasswordConfirm = true;
  }

  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
    nameEd.dispose();
    password.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);



    return Scaffold(
        backgroundColor: kBackground,
        body: SafeArea(child: SingleChildScrollView(

            child:Padding(padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),

        child:Column(

        children: <Widget>[

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[ SvgPicture.asset("assets/svgs/navigation.svg"),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff333333),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10, ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:const [

                        Text(
                        "Switch to Log in",
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                          color:  Color(0xfff8a80d),
                          fontSize: 14,
                          fontFamily: "Satoshi",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )]).addHeight(32.h),
          const Align(
             alignment: Alignment.topLeft,
             child:  Text(
            "Get Started",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: "Satoshi",
              fontWeight: FontWeight.w700,
            ),
          )),
          const SizedBox(height: 8),
          const Align( alignment: Alignment.topLeft,child:   Text(
            "Be ready to use Kooha in less than 2min ⚡️",
            style: TextStyle(
              color:kTextGrey,
              fontSize: 14,
              fontFamily: "Satoshi",
              fontWeight: FontWeight.w500,
            ),
          )).addHeight(40.h),


           AppTextField(title: "Full name",
            controller: nameEd, hasBorder: true, isSearch: false,hintText: "Justin Culhane",).addHeight(16.h),
          AppTextField(title: "Email Address",
            keyboardType: TextInputType.emailAddress,
            controller: email,
            hasBorder: true, isSearch: false, hintText: "justinculhane@gmail.com",
            onChanged: (val){
              validateEmail(val);
            },
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 12),
                child:Visibility(
                    visible: EmailValidator.validate(email.text, true),
                    child:SvgPicture.asset("assets/svgs/tick.svg"))),).addHeight(16.h),
          AppTextField(title: "Password",
            isSearch: false,
            controller: password,
            obscureText: hidePasswordConfirm == true,

            hasBorder: true, hintText: "• • • • • • • •", suffixIcon:
          GestureDetector(
              onTap:(){

                setState(() {
                  hidePasswordConfirm = !hidePasswordConfirm;
                });

              },
              child: const Padding(
              padding: EdgeInsets.only(right: 16),child:Text("Show", style: TextStyle(
            fontSize: 14,
              fontWeight: FontWeight.w500,
              color: kGoldenYellow)))),).addHeight(20.h),

                    Row(

                      children:[

                              Padding(
                                  padding: const EdgeInsets.only(bottom:5 ),
                                  child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          check = !check;
                                        });
                                      },

                                      child:
                                      check ==true?

                                  SvgPicture.asset("assets/svgs/tick_circle.svg", )

                                 : Padding(

                                          padding: EdgeInsets.only(left: 2, right: 2),child:
                                      CircleAvatar(radius: 10, backgroundColor: kGoldenYellow,))

                                 )),


                        const SizedBox(width: 12),
                        RichText(
                          text: const  TextSpan(
                            style: TextStyle(  fontSize: 14,
                              fontFamily: "Satoshi",
                              fontWeight: FontWeight.w500,),
                            children: <TextSpan>[
                              TextSpan(text: "I have read, understood and I agree to Kooha’s\n",
                                  style: TextStyle(
                                      color: Color(0xFFAAAAAA))

                              ),
                              TextSpan(text: "Privacy Policy ", style: TextStyle(
                                   color: kGoldenYellow)),
                              TextSpan(text: '& ',  style: TextStyle(
                                  color: Color(0xFFAAAAAA))),
                              TextSpan(text: "Terms and Conditions", style: TextStyle(
                                  color: kGoldenYellow))
                            ],
                          ),),

                      ],
                    ),
                //SizedBox(height: 43.40),

        ],
            ),
          )


        ) ),
    floatingActionButton: Padding(padding: const EdgeInsets.fromLTRB(24, 0, 24, 40 ), child:
    AppButton(textColor: kWhite, hasBorder: false, buttonColor: kPrimary, text: 'Create account',
      onTap:

      email.text.isNotEmpty && nameEd.text.isNotEmpty && password.text.isNotEmpty && check == true? (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return NavigationWidget();
      }));}
      : (){}

      ,),),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
    );
}
  void validateEmail(String val) {
    if(val.isEmpty){
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    }else if(!EmailValidator.validate(val, true)){
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    }else{
      setState(() {

        _errorMessage = "";
      });
    }


}}