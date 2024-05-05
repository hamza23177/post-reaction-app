import 'package:flutter/services.dart';
import 'package:untitled1/component/MyBehavior.dart';
import 'package:untitled1/component/MyPainterLogin.dart';
import 'package:untitled1/component/painter.dart';
import 'package:untitled1/models/api_response.dart';
import 'package:untitled1/models/user.dart';
import 'package:untitled1/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant.dart';
import 'contuct_me_user.dart';
import 'drower_home.dart';
import 'login.dart';

import 'dart:async';
import 'dart:ui';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> with TickerProviderStateMixin {
  late AnimationController controller1;
  late AnimationController controller2;
  late Animation<double> animation1;
  late Animation<double> animation2;
  late Animation<double> animation3;
  late Animation<double> animation4;

  @override
  void initState() {
    super.initState();

    controller1 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation1 = Tween<double>(begin: .1, end: .15).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller1.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller1.forward();
        }
      });
    animation2 = Tween<double>(begin: .02, end: .04).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });

    controller2 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation3 = Tween<double>(begin: .41, end: .38).animate(CurvedAnimation(
      parent: controller2,
      curve: Curves.easeInOut,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller2.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward();
        }
      });
    animation4 = Tween<double>(begin: 170, end: 190).animate(
      CurvedAnimation(
        parent: controller2,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });

    Timer(Duration(milliseconds: 2500), () {
      controller1.forward();
    });

    controller2.forward();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool loading = false;
  TextEditingController nameController = TextEditingController(),
      emailController = TextEditingController(),
      passwordController = TextEditingController(),
      passwordConfirmController = TextEditingController(),
      phoneController = TextEditingController(),
      workController = TextEditingController(),
      obsController = TextEditingController(),
      addressController = TextEditingController();

  void _registerUser() async {
    ApiResponse response = await register(
        nameController.text,
        emailController.text,
        passwordController.text,
        phoneController.text,
        workController.text,
        obsController.text,
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
        MaterialPageRoute(builder: (context) => DrowerHome()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xffF57752),
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Positioned(
                    top: size.height * (animation2.value + .58),
                    left: size.width * .21,
                    child: CustomPaint(
                      painter: MyPainterLogin(50),
                    ),
                  ),
                  Positioned(
                    top: size.height * .98,
                    left: size.width * .1,
                    child: CustomPaint(
                      painter: MyPainterLogin(animation4.value - 30),
                    ),
                  ),
                  Positioned(
                    top: size.height * .5,
                    left: size.width * (animation2.value + .8),
                    child: CustomPaint(
                      painter: MyPainterLogin(30),
                    ),
                  ),
                  Positioned(
                    top: size.height * animation3.value,
                    left: size.width * (animation1.value + .1),
                    child: CustomPaint(
                      painter: MyPainterLogin(60),
                    ),
                  ),
                  Positioned(
                    top: size.height * .1,
                    left: size.width * .8,
                    child: CustomPaint(
                      painter: MyPainterLogin(animation4.value),
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * .1),
                          child: Text(
                            'دليل خدمات سوريا',
                            style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              wordSpacing: 4,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 17,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            component1(
                              Icons.person,
                              'الاسم الكامل...',
                              false,
                              true,
                              nameController,
                              (val) => val!.isEmpty ? 'الاسم غير صالح' : null,
                            ),
                            component1(
                              Icons.email_outlined,
                              'الإيميل...',
                              false,
                              true,
                              emailController,
                              (val) => val!.isEmpty ? 'الإيميل غير صالح' : null,
                            ),
                            component1(
                              Icons.lock_outline,
                              'كلمة المرور...',
                              true,
                              false,
                              passwordController,
                              (val) => val!.length < 6
                                  ? 'مطلوب على الأقل 6 محارف'
                                  : null,
                            ),
                            component1(
                              Icons.lock_outline,
                              'تأكيد كلمة المرور...',
                              true,
                              false,
                              passwordConfirmController,
                              (val) => val != passwordController.text
                                  ? 'تأكيد كلمة المرور غير صحيح'
                                  : null,
                            ),
                            component1(
                              Icons.phone,
                              'الموبايل...',
                              true,
                              false,
                              phoneController,
                              (val) =>
                                  val!.isEmpty ? 'رقم الموبايل غير صالح' : null,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                loading
                                    ? Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    : component2('تسجيل', 2.58, () {
                                        // تحقق من أن currentState ليس null قبل استدعاء validate()
                                        if (formKey.currentState?.validate() ??
                                            true) {
                                          setState(() {
                                            loading = true;
                                            _registerUser();
                                          });
                                        }
                                      }),
                                SizedBox(width: size.width / 20),
                                component2(
                                  'تواصل معنا',
                                  2.58,
                                  () {
                                    HapticFeedback.lightImpact();
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                          builder: (context) => ContactPage(),
                                        ),
                                        (route) => false);
                                    // Fluttertoast.showToast(
                                    //     msg: 'Forgotten password button pressed');
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            component2(
                              'تسجيل دخول',
                              2,
                              () {
                                HapticFeedback.lightImpact();
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                    (route) => false);

                                // Fluttertoast.showToast(
                                //     msg: 'Create a new account button pressed');
                              },
                            ),
                            SizedBox(height: size.height * .05),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // backgroundColor: Color(0xffF5F5F5),
        // appBar: AppBar(
        //   backgroundColor: Color(0xffF57752),
        //   elevation: 0,
        //   title: Text('تسجيل'),
        //   centerTitle: true,
        //   systemOverlayStyle: SystemUiOverlayStyle.light,
        // ),
        // body: Stack(
        //   children: [
        //     Form(
        //       key: formKey,
        //       child: ListView(
        //         padding:
        //             const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
        //         children: [
        //           TextFormField(
        //             controller: nameController,
        //             validator: (val) => val!.isEmpty ? 'الاسم غير صالح' : null,
        //             decoration: kInputDecoration('الاسم الكامل'),
        //           ),
        //           SizedBox(
        //             height: 20,
        //           ),
        //           TextFormField(
        //             controller: emailController,
        //             keyboardType: TextInputType.emailAddress,
        //             validator: (val) =>
        //                 val!.isEmpty ? 'الإيميل غير صالح' : null,
        //             decoration: kInputDecoration('الإيميل'),
        //           ),
        //           SizedBox(
        //             height: 20,
        //           ),
        //           TextFormField(
        //             controller: passwordController,
        //             obscureText: true,
        //             validator: (val) =>
        //                 val!.length < 6 ? 'مطلوب على الأقل 6 محارف' : null,
        //             decoration: kInputDecoration('كلمة المرور'),
        //           ),
        //           SizedBox(
        //             height: 20,
        //           ),
        //           TextFormField(
        //             controller: passwordConfirmController,
        //             obscureText: true,
        //             validator: (val) => val != passwordController.text
        //                 ? 'تأكيد كلمة المرور غير صحيح'
        //                 : null,
        //             decoration: kInputDecoration('تأكيد كلمة المرور'),
        //           ),
        //           SizedBox(
        //             height: 20,
        //           ),
        //           TextFormField(
        //             controller: phoneController,
        //             keyboardType: TextInputType.phone,
        //             validator: (val) =>
        //                 val!.isEmpty ? 'رقم الموبايل غير صالح' : null,
        //             decoration: kInputDecoration('الموبايل'),
        //           ),
        //           SizedBox(
        //             height: 20,
        //           ),
        //           TextFormField(
        //             controller: workController,
        //             validator: (val) => val!.isEmpty ? 'العمل غير صالح' : null,
        //             decoration: kInputDecoration('العمل'),
        //           ),
        //           SizedBox(
        //             height: 20,
        //           ),
        //           TextFormField(
        //             controller: obsController,
        //             validator: (val) =>
        //                 val!.isEmpty ? 'نبذة عن العمل غير صالح' : null,
        //             decoration: kInputDecoration('نبذة عن عملك'),
        //           ),
        //           SizedBox(
        //             height: 20,
        //           ),
        //           TextFormField(
        //             controller: addressController,
        //             validator: (val) =>
        //                 val!.isEmpty ? 'العنوان غير صالح' : null,
        //             decoration: kInputDecoration('العنوان'),
        //           ),
        //           SizedBox(
        //             height: 20,
        //           ),
        //           loading
        //               ? Center(child: CircularProgressIndicator())
        //               : kTextButton(
        //                   'تسجيل',
        //                   () {
        //                     if (formKey.currentState!.validate()) {
        //                       setState(() {
        //                         loading = !loading;
        //                         _registerUser();
        //                       });
        //                     }
        //                   },
        //                 ),
        //           SizedBox(
        //             height: 20,
        //           ),
        //           kLoginRegisterHint('هل لديك حساب سابقا ؟', 'تسجيل دخول', () {
        //             Navigator.of(context).pushAndRemoveUntil(
        //                 MaterialPageRoute(builder: (context) => Login()),
        //                 (route) => false);
        //           })
        //         ],
        //       ),
        //     ),
        //     CustomPaint(
        //       painter: MyPainter(),
        //       child: Container(height: 0),
        //     ),
        //   ],
        // ),
      ),
    );
  }

  Widget component1(
      IconData icon,
      String hintText,
      bool isPassword,
      bool isEmail,
      TextEditingController txtController, // إضافة الـ controller كبارامتر
      String? Function(String?)? validator // إضافة الـ validator كبارامتر
      ) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 15,
          sigmaX: 15,
        ),
        child: Container(
          height: size.width / 8,
          width: size.width / 1.2,
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: size.width / 30),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
            // تغيير من TextField إلى TextFormField لاستخدام الـ validator
            controller: txtController, // استخدام الـ controller
            validator: validator, // استخدام الـ validator
            style: TextStyle(color: Colors.white.withOpacity(.8)),
            cursorColor: Colors.white,
            obscureText: isPassword,
            keyboardType:
                isEmail ? TextInputType.emailAddress : TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: Colors.white.withOpacity(.7),
              ),
              border: InputBorder.none,
              hintMaxLines: 1,
              hintText: hintText,
              hintStyle:
                  TextStyle(fontSize: 14, color: Colors.white.withOpacity(.5)),
            ),
          ),
        ),
      ),
    );
  }

  Widget component2(String string, double width, VoidCallback voidCallback) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: voidCallback,
          child: Container(
            height: size.width / 8,
            width: size.width / width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.05),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              string,
              style: TextStyle(color: Colors.white.withOpacity(.8)),
            ),
          ),
        ),
      ),
    );
  }
}
