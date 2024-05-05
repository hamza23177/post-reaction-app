import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/component/painter.dart';
import 'package:untitled1/models/api_response.dart';
import 'package:untitled1/models/commentMazad.dart';
import 'package:untitled1/screens/post_user_profile.dart';
import 'package:untitled1/services/commentMazads_service.dart';
import 'package:untitled1/services/user_services.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'login.dart';

class CommentMazadScreen extends StatefulWidget {
  final int? postId;

  CommentMazadScreen({
    this.postId
  });

  @override
  _CommentMazadScreenState createState() => _CommentMazadScreenState();
}

class _CommentMazadScreenState extends State<CommentMazadScreen> {
  List<dynamic> _commentsList = [];
  bool _loading = true;
  int userId = 0;
  int _editCommentId = 0;
  TextEditingController _txtCommentController = TextEditingController();

  // Get comments
  Future<void> _getComments() async {
    userId = await getUserId();
    ApiResponse response = await getComments(widget.postId ?? 0);

    if(response.error == null){
      setState(() {
        _commentsList = response.data as List<dynamic>;
        _loading = _loading ? !_loading : _loading;
      });
    }
    else if(response.error == unauthorized){
      logout().then((value) => {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Login()), (route) => false)
      });
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('${response.error}')
      ));
    }
  }
  // create comment
  void _createComment() async {
    ApiResponse response = await createComment(widget.postId ?? 0, _txtCommentController.text);

    if(response.error == null){
      _txtCommentController.clear();
      _getComments();
    }
    else if(response.error == unauthorized){
      logout().then((value) => {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Login()), (route) => false)
      });
    }
    else {
      setState(() {
        _loading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('${response.error}')
      ));
    }
  }

  // edit comment
  void _editComment() async {
    ApiResponse response = await editComment(_editCommentId, _txtCommentController.text);

    if(response.error == null) {
      _editCommentId = 0;
      _txtCommentController.clear();
      _getComments();
    }
    else if(response.error == unauthorized){
      logout().then((value) => {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Login()), (route) => false)
      });
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('${response.error}')
      ));
    }
  }


  // Delete comment
  void _deleteComment(int commentId) async {
    ApiResponse response = await deleteComment(commentId);

    if(response.error == null){
      _getComments();
    }
    else if(response.error == unauthorized){
      logout().then((value) => {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Login()), (route) => false)
      });
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('${response.error}')
      ));
    }
  }

  @override
  void initState() {
    _getComments();
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
          title: Text('المبلغ الحالي'),
          centerTitle: true, systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: _loading ? Center(child: CircularProgressIndicator(color: Color(0xffF57752),),) :
        Stack(
          children: [
            Column(
                children: [
                  Expanded(
                      child: RefreshIndicator(
                          onRefresh: (){
                            return _getComments();
                          },
                          child: ListView.builder(
                              itemCount: _commentsList.length,
                              itemBuilder: (BuildContext context, int index) {
                                Commenmaz comment = _commentsList[index];
                                return Container(
                                  padding: EdgeInsets.all(13),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(color: Colors.black26, width: 0.5)
                                      )
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => ContactUsPage(
                                                    image: '${comment.user!.image}',
                                                    username: '${comment.user!.name}',
                                                    work: '${comment.user!.work}',
                                                    about: '${comment.user!.obs}',
                                                    phone: '${comment.user!.phone}',
                                                    location: '${comment.user!.address}',
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      image: comment.user!.image != null ? DecorationImage(
                                                          image: NetworkImage('${comment.user!.image}'),
                                                          fit: BoxFit.cover
                                                      ) : null,
                                                      borderRadius: BorderRadius.circular(15),
                                                      color: Colors.blueGrey
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Text(
                                                  '${comment.user!.name}',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 16
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          comment.user!.id == userId ?
                                          PopupMenuButton(
                                            child: Padding(
                                                padding: EdgeInsets.only(right:10),
                                                child: Icon(Icons.more_vert, color: Colors.black,)
                                            ),
                                            itemBuilder: (context) => [
                                              PopupMenuItem(
                                                  child: Text('تعديل'),
                                                  value: 'edit'
                                              ),
                                              PopupMenuItem(
                                                  child: Text('حذف'),
                                                  value: 'delete'
                                              )
                                            ],
                                            onSelected: (val){
                                              if(val == 'edit'){
                                                setState(() {
                                                  _editCommentId = comment.id ?? 0;
                                                  _txtCommentController.text = comment.comment ?? '';
                                                });

                                              } else {
                                                _deleteComment(comment.id ?? 0);
                                              }
                                            },
                                          ) : SizedBox()
                                        ],
                                      ), SizedBox(height: 10,),
                                      Text('${comment.comment}')
                                    ],
                                  ),
                                );
                              }
                          )
                      )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.black26, width: 0.5
                          )
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: kInputDecoration('اكتب سعرك الأعلى للمنتج ...'),
                            controller: _txtCommentController,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.send,color: Color(0xffF57752),),
                          onPressed: (){
                            if(_txtCommentController.text.isNotEmpty){
                              setState(() {
                                _loading = true;
                              });
                              if (_editCommentId > 0){
                                _editComment();
                              } else {
                                _createComment();
                              }
                            }
                          },
                        )
                      ],
                    ),
                  )
                ]
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