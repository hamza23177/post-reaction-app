import 'package:flutter/services.dart';
import 'package:untitled1/component/painter.dart';
import 'package:untitled1/models/api_response.dart';
import 'package:untitled1/models/user.dart';
import 'package:untitled1/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant.dart';
import 'drower_home.dart';
import 'home.dart';
import 'register.dart';

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
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>DrowerHome()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          backgroundColor: Color(0xffF57752),
          elevation: 0,
          title: Text('تجيل دخول'),
          centerTitle: true, systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: Stack(
          children: [
            Form(
              key: formkey,
              child: ListView(
                padding: EdgeInsets.all(32),
                children: [
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: txtEmail,
                      validator: (val) => val!.isEmpty ? 'الإيميل غير صالح' : null,
                      decoration: kInputDecoration('الإيميل')
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                      controller: txtPassword,
                      obscureText: true,
                      validator: (val) => val!.length < 6 ? 'مطلوب على الأقل 6 محارف' : null,
                      decoration: kInputDecoration('كلمة المرور')
                  ),
                  SizedBox(height: 10,),
                  loading? Center(child: CircularProgressIndicator(),)
                      :
                  kTextButton('تجيل الدخول', () {
                    if (formkey.currentState!.validate()){
                      setState(() {
                        loading = true;
                        _loginUser();
                      });
                    }
                  }),
                  SizedBox(height: 10,),
                  kLoginRegisterHint('لا تملك حساب ؟', 'تسجيل', (){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Register()), (route) => false);
                  })
                ],
              ),
            ),
            CustomPaint(
              painter: MyPainter(),
              child: Container(height: 0),
            ),
          ],
        ),
      ),
    );
  }
}