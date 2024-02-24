import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled1/models/api_response.dart';
import 'package:untitled1/models/user.dart';
import 'package:untitled1/screens/login.dart';
import 'package:untitled1/services/user_services.dart';

import '../constant.dart';
import 'home.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool loading = false;
  TextEditingController
  nameController = TextEditingController(),
      emailController = TextEditingController(),
      passwordController = TextEditingController(),
      passwordConfirmController = TextEditingController();

  void _registerUser () async {
    ApiResponse response = await register(nameController.text, emailController.text, passwordController.text);
    if(response.error == null) {
      _saveAndRedirectToHome(response.data as User);
    }
    else {
      setState(() {
        loading = !loading;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('${response.error}')
      ));
    }
  }

  // Save and redirect to home
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
          title: Text('تسجيل'),
          centerTitle: true,
        ),
        body: Form(
          key: formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            children: [
              TextFormField(
                  controller: nameController,
                  validator: (val) => val!.isEmpty ? 'اسم غير صالح' : null,
                  decoration: kInputDecoration('اسم')
              ),
              SizedBox(height: 20,),
              TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) => val!.isEmpty ? 'ايميل غير صالح' : null,
                  decoration: kInputDecoration('ايميل')
              ),
              SizedBox(height: 20,),
              TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  validator: (val) => val!.length < 6 ? 'مطلوب 6 أحرف على الإقل' : null,
                  decoration: kInputDecoration('كلمة المرور')
              ),
              SizedBox(height: 20,),
              TextFormField(
                  controller: passwordConfirmController,
                  obscureText: true,
                  validator: (val) => val != passwordController.text ? 'تأكيد كلمة المرور غير صحيح' : null,
                  decoration: kInputDecoration('تأكيد كلمة المرور')
              ),
              SizedBox(height: 20,),
              loading ?
              Center(child: CircularProgressIndicator())
                  : kTextButton('تسجيل', () {
                if(formKey.currentState!.validate()){
                  setState(() {
                    loading = !loading;
                    _registerUser();
                  });
                }
              },
              ),
              SizedBox(height: 20,),
              kLoginRegisterHint('لديك حساب مسبقاً ', 'تسجيل دخول', (){
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Login()), (route) => false);
              })
            ],
          ),
        ),
      ),
    );
  }
}
