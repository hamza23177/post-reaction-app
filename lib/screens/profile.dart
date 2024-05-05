import 'dart:io';

import 'package:flutter/services.dart';
import 'package:untitled1/component/painter.dart';
import 'package:untitled1/models/api_response.dart';
import 'package:untitled1/models/user.dart';
import 'package:untitled1/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constant.dart';
import 'login.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User? user;
  bool loading = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  File? _imageFile;
  final _picker = ImagePicker();
  TextEditingController txtNameController = TextEditingController();
  TextEditingController numPhoneController = TextEditingController();
  TextEditingController txtWorkController = TextEditingController();
  TextEditingController txtObsController = TextEditingController();
  TextEditingController txtAddressController = TextEditingController();

  Future getImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  // get user detail
  void getUser() async {
    ApiResponse response = await getUserDetail();
    if (response.error == null) {
      setState(() {
        user = response.data as User;
        loading = false;
        txtNameController.text = user!.name ?? '';
        numPhoneController.text = user!.phone ?? '';
        txtWorkController.text = user!.work ?? '';
        txtObsController.text = user!.obs ?? '';
        txtAddressController.text = user!.address ?? '';
      });
    } else if (response.error == unauthorized) {
      logout().then((value) => {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Login()),
                (route) => false)
          });
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
    }
  }

  //update profile
  void updateProfile() async {
    ApiResponse response = await updateUser(
        txtNameController.text,
        getStringImage(_imageFile),
        numPhoneController.text,
        txtWorkController.text,
        txtObsController.text,
        txtAddressController.text);
    setState(() {
      loading = false;
    });
    if (response.error == null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.data}')));
    } else if (response.error == unauthorized) {
      logout().then((value) => {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Login()),
                (route) => false)
          });
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
    }
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        // appBar: AppBar(
        //   backgroundColor: Color(0xffF57752),
        //   elevation: 0,
        //   title: Text('الملف الشخصي'),
        //   centerTitle: true, systemOverlayStyle: SystemUiOverlayStyle.light,
        // ),
        body: loading
            ? Center(
                child: CircularProgressIndicator(
                  color: Color(0xffF57752),
                ),
              )
            : Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 40, right: 40),
                    child: ListView(
                      children: [
                        Center(
                          child: GestureDetector(
                            child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                image: _imageFile == null
                                    ? user!.image != null
                                        ? DecorationImage(
                                            image:
                                                NetworkImage('${user!.image}'),
                                            fit: BoxFit.cover)
                                        : null
                                    : DecorationImage(
                                        image:
                                            FileImage(_imageFile ?? File('')),
                                        fit: BoxFit.cover),
                                color: Color(0xffF57752),
                              ),
                            ),
                            onTap: () {
                              getImage();
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Form(
                            key: formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: kInputDecoration('الاسم'),
                                  controller: txtNameController,
                                  validator: (val) =>
                                      val!.isEmpty ? 'الاسم غير صالح' : null,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: kInputDecoration('الموبايل'),
                                  controller: numPhoneController,
                                  keyboardType: TextInputType.phone,
                                  validator: (val) =>
                                      val!.isEmpty ? 'الموبايل غير صالح' : null,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: kInputDecoration('العمل'),
                                  controller: txtWorkController,
                                  validator: (val) =>
                                      val!.isEmpty ? 'العمل غير صالح' : null,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: kInputDecoration('نبذة عن عملك'),
                                  controller: txtObsController,
                                  validator: (val) => val!.isEmpty
                                      ? 'نبذة عن العمل غير صالح'
                                      : null,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: kInputDecoration('العنوان'),
                                  controller: txtAddressController,
                                  validator: (val) =>
                                      val!.isEmpty ? 'العنوان غير صالح' : null,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        kTextButton(
                          'تعديل',
                          () {
                            if (formKey.currentState!.validate()) {
                              setState(() {
                                loading = true;
                              });
                              updateProfile();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  // CustomPaint(
                  //   painter: MyPainter(),
                  //   child: Container(height: 0),
                  // ),
                ],
              ),
      ),
    );
  }
}
