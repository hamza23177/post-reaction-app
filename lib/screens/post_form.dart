import 'dart:io';

import 'package:flutter/services.dart';
import 'package:untitled1/component/painter.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/models/api_response.dart';
import 'package:untitled1/models/post.dart';
import 'package:untitled1/services/post_service.dart';
import 'package:untitled1/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'login.dart';

class PostForm extends StatefulWidget {
  final Post? post;
  final String? title;

  PostForm({this.post, this.title});

  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _txtControllerBody = TextEditingController();
  bool _loading = false;
  File? _imageFile;
  final _picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  void _createPost() async {
    String? image = _imageFile == null ? null : getStringImage(_imageFile);
    ApiResponse response = await createPost(_txtControllerBody.text, image);

    if (response.error == null) {
      Navigator.of(context).pop();
    } else if (response.error == unauthorized) {
      logout().then((value) => {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Login()),
                (route) => false)
      });
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
      setState(() {
        _loading = !_loading;
      });
    }
  }

  // edit post
  void _editPost(int postId) async {
    ApiResponse response = await editPost(postId, _txtControllerBody.text);
    if (response.error == null) {
      Navigator.of(context).pop();
    } else if (response.error == unauthorized) {
      logout().then((value) => {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Login()),
                (route) => false)
          });
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
      setState(() {
        _loading = !_loading;
      });
    }
  }

  @override
  void initState() {
    if (widget.post != null) {
      _txtControllerBody.text = widget.post!.body ?? '';
    }
    super.initState();
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
          title: Text('${widget.title}'),
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: _loading
            ? Center(
                child: CircularProgressIndicator(
                  color: Color(0xffF57752),
                ),
              )
            : Stack(
                children: [
                  ListView(
                    children: [
                      widget.post != null
                          ? SizedBox()
                          : Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.5,
                              decoration: BoxDecoration(
                                  image: _imageFile == null
                                      ? null
                                      : DecorationImage(
                                          image:
                                              FileImage(_imageFile ?? File('')),
                                          fit: BoxFit.contain)),
                              child: Center(
                                child: IconButton(
                                  icon: Icon(Icons.image,
                                      size: 50, color: Colors.black38),
                                  onPressed: () {
                                    getImage();
                                  },
                                ),
                              ),
                            ),
                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: TextFormField(
                            controller: _txtControllerBody,
                            keyboardType: TextInputType.multiline,
                            maxLines: 20,
                            validator: (val) =>
                                val!.isEmpty ? 'مطلوب كتابة نص المنشور' : null,
                            decoration: InputDecoration(
                                hintText: "نص المنشور ...",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black38))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: kTextButton('نشر', () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              _loading = !_loading;
                            });
                            if (widget.post == null) {
                              _createPost();
                            } else {
                              _editPost(widget.post!.id ?? 0);
                            }
                          }
                        }),
                      )
                    ],
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
