import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/models/api_response.dart';
import 'package:untitled1/models/user.dart';
import 'package:untitled1/screens/register.dart';
import 'package:untitled1/services/user_services.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool loading = false;

  void _loginUser() async {
    ApiResponse response = await login(txtEmail.text, txtPassword.text);
    if (response.error == null){
      _saveAndRedirectToHome(response.data as User);
    }
    else {
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('${response.error}')
      ));
    }
  }

  void _saveAndRedirectToHome(User user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', user.token ?? '');
    await pref.setInt('userId', user.id ?? 0);
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Home()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('تسجيل دخول'),
          centerTitle: true,
        ),
        body: Form(
          key: formkey,
          child: ListView(
            padding: EdgeInsets.all(32),
            children: [
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: txtEmail,
                  validator: (val) => val!.isEmpty ? 'الإيميل غير صالح' : null,
                  decoration: kInputDecoration('إيميل')
              ),
              SizedBox(height: 10,),
              TextFormField(
                  controller: txtPassword,
                  obscureText: true,
                  validator: (val) => val!.length < 6 ? 'مطلوب على الأقل 6 حروف' : null,
                  decoration: kInputDecoration('كلمة المرور')
              ),
              SizedBox(height: 10,),
              loading? Center(child: CircularProgressIndicator(),)
                  :
              kTextButton('تسجيل الدخول', () {
                if (formkey.currentState!.validate()){
                  setState(() {
                    loading = true;
                    _loginUser();
                  });
                }
              }),
              SizedBox(height: 10,),
              kLoginRegisterHint('لاتملك حساب ؟ ', 'تسجيل', (){
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Register()), (route) => false);
              })
            ],
          ),
        ),
      ),
    );
  }
}