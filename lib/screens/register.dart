import 'package:flutter/services.dart';
import 'package:untitled1/component/painter.dart';
import 'package:untitled1/models/api_response.dart';
import 'package:untitled1/models/user.dart';
import 'package:untitled1/screens/home.dart';
import 'package:untitled1/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant.dart';
import 'drower_home.dart';
import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool loading = false;
  TextEditingController nameController = TextEditingController(),
      emailController = TextEditingController(),
      passwordController = TextEditingController(),
      passwordConfirmController = TextEditingController(),
      phoneController = TextEditingController(),
      workController = TextEditingController(),
      addressController = TextEditingController();

  void _registerUser() async {
    ApiResponse response = await register(
        nameController.text,
        emailController.text,
        passwordController.text,
        phoneController.text,
        workController.text,
        addressController.text);
    if (response.error == null) {
      _saveAndRedirectToHome(response.data as User);
    } else {
      setState(() {
        loading = !loading;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
    }
  }

  // Save and redirect to home
  void _saveAndRedirectToHome(User user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', user.token ?? '');
    await pref.setInt('userId', user.id ?? 0);
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => DrowerHome()), (route) => false);
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
          title: Text('تسجيل'),
          centerTitle: true, systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: Stack(
          children: [
            Form(
              key: formKey,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                children: [
                  TextFormField(
                    controller: nameController,
                    validator: (val) => val!.isEmpty ? 'الاسم غير صالح' : null,
                    decoration: kInputDecoration('الاسم'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) => val!.isEmpty ? 'الإيميل غير صالح' : null,
                    decoration: kInputDecoration('الإيميل'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    validator: (val) =>
                        val!.length < 6 ? 'مطلوب على الأقل 6 محارف' : null,
                    decoration: kInputDecoration('كلمة المرور'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      controller: passwordConfirmController,
                      obscureText: true,
                      validator: (val) => val != passwordController.text
                          ? 'تأكيد كلمة المرور غير صحيح'
                          : null,
                      decoration: kInputDecoration('تأكيد كلمة المرور')),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    validator: (val) => val!.isEmpty ? 'رقم الموبايل غير صالح' : null,
                    decoration: kInputDecoration('الموبايل'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: workController,
                    validator: (val) => val!.isEmpty ? 'العمل غير صالح' : null,
                    decoration: kInputDecoration('العمل'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: addressController,
                    validator: (val) => val!.isEmpty ? 'العنوان غير صالح' : null,
                    decoration: kInputDecoration('العنوان'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  loading
                      ? Center(child: CircularProgressIndicator())
                      : kTextButton(
                          'تسجيل',
                          () {
                            if (formKey.currentState!.validate()) {
                              setState(() {
                                loading = !loading;
                                _registerUser();
                              });
                            }
                          },
                        ),
                  SizedBox(
                    height: 20,
                  ),
                  kLoginRegisterHint('هل لديك حساب سابقا ؟', 'تسجيل دخول', () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => Login()),
                        (route) => false);
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
